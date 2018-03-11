import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UsefulLinksPage extends StatefulWidget {
  UsefulLinksPage({Key key}) : super(key: key);

  static const String routeName = "/UsefulLinksPage";

  @override
  _SchedulePageState createState() => new _SchedulePageState();
}

//Examle Schedule
class _SchedulePageState extends State<UsefulLinksPage> {
  static _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static var serviceLinks = [
    _generateLink(
        "Lunch Orders", Icons.fastfood, "http://passionfood.ch/register/"),
    _generateLink("Bus Information", Icons.directions_bus,
        "https://www.zis.ch/fs/pages/458"),
    _generateLink("PE Clothing Information", Icons.pool,
        "https://www.zis.ch/fs/pages/459"),
    _generateLink("Health Services", Icons.healing,
        "https://docs.google.com/document/d/1pwiSWlqAM6ZVaOrkV5yquYK5uHiXNysmxQidm3usOJY/edit?usp=sharing"),
    _generateLink("Music Academy Teachers", Icons.music_note,
        "https://docs.google.com/document/d/18RuCv01lZmxp_1l8OwMCIHTqLUsuL7A4Dn4j_J2kenE/edit?ts=5936663b"),
    _generateLink("Tutor Services (Master List)", Icons.book,
        "https://docs.google.com/document/d/15dssyjWUq4Z2DafESBK_wqjTujV5dqLSWYIwxQQEuKs/edit"),
  ];
  static var schoolLinks = [
    _generateLink("Annual Fund", Icons.monetization_on,
        "https://www.zis.ch/fs/pages/227"),
    _generateLink("Child Protection Policy", Icons.info,
        "https://www.zis.ch/uploaded/Faculty_Staff_Portal/Student_Support_Services/ZIS_Child_Protection_Policy.pdf"),
    _generateLink("Parent & ZIS Partnership", Icons.group_work,
        "https://www.zis.ch/uploaded/ZIS/Parents_Portal/ZISLinks/ZIS_parent_guardian_partnership_August_15.pdf"),
    _generateLink(
        "School Publications", Icons.public, "https://www.zis.ch/fs/pages/223"),
    _generateLink(
        "ZIS Job Center", Icons.work, "https://www.zis.ch/fs/pages/303"),
    _generateLink("ZIS Terms and Abbreviations", Icons.collections_bookmark,
        "https://www.zis.ch/fs/pages/303"),
  ];
  static var formsLinks = [
    _generateLink("Mentoring Permission", Icons.info,
        "https://www.zis.ch/cf_forms/view.cfm?formID=533"),
    _generateLink("Parent Volunteering", Icons.event_available,
        "https://www.zis.ch/cf_forms/view.cfm?formID=11715"),
    _generateLink("Teacher Referral Mentoring", Icons.info,
        "https://www.zis.ch/cf_forms/view.cfm?formID=532"),
    _generateLink("Student Withdrawal", Icons.exit_to_app,
        "https://www.zis.ch/cf_forms/view.cfm?formID=1332"),
    _generateLink("Temporary Guardianship", Icons.forward,
        "https://www.zis.ch/uploaded/ZIS/Parents_Portal/ZISLinks/ZIS_temporary_guardianship_form.pdf"),
  ];

  static var linkLists = [
    serviceLinks,
    schoolLinks,
    formsLinks,
  ];

  static InkWell _generateLink(String name, IconData icon, String url) {
    return new InkWell(
      onTap: () {
        _launchUrl(url);
      },
      child: new Card(
        child: new Padding(
          padding: new EdgeInsets.all(10.0),
          child: new Row(
            children: <Widget>[
              new Icon(icon),
              new Text(
                name,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: linkCategories.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Useful Links',
              style: new TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.yellow)),
          bottom: new TabBar(
            isScrollable: true,
            tabs: linkCategories.map((String category) {
              return new Tab(
                text: category,
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(
          children: linkLists.map((category) {
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new ListView(children: category), //TODO: Display cards
            );
          }).toList(),
        ),
        //TODO: Add body and cards
      ),
    );
  }

  //Days of the week for tab bar
  static const List<String> linkCategories = const <String>[
    "Services",
    "School Links",
    "Forms",
  ];

  void _onFloatingActionButtonPressed() {}
}
