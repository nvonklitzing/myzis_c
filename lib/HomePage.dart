import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:myzis_c/WordPressPostCard.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/scheduler.dart';
import 'package:myzis_c/LoginPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  static const String routeName = "/HomePage";

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //Methods for checking for the existance of login
  Future<File> _getAuth() async {
    // get the path to the document directory.
    String dir = (await getApplicationDocumentsDirectory()).path;
    return new File('$dir/auth.txt');
  }

  Future<List<String>> _readAuth() async {
    try {
      File file = await _getAuth();
      // read the variable as a string from the file.
      String contents = await file.readAsString();
      return contents.split(':');
    } on FileSystemException {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    //Method for creating drawer Items
    ListTile getDrawerItem(var icon, String s, String routeName) {
      return new ListTile(
        leading: new Icon(icon, color: Colors.yellow),
        title: new Text(s,
            style: new TextStyle(
                fontWeight: FontWeight.bold, color: Colors.yellow)),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    //MyZIS drawer decoration
    var drawerHeader = new DrawerHeader(
      child: new Text(
        'MyZIS',
        style: new TextStyle(
            fontSize: 50.0, color: Colors.yellow, fontWeight: FontWeight.bold),
      ),
      decoration: new BoxDecoration(color: new Color(0xFF005A84)),
    );

    //Drawer About item for info about App
    var drawerAboutItem = new AboutListTile(
      child: new Text('About', style: new TextStyle(color: Colors.yellow)),
      applicationName: 'MyZIS',
      applicationVersion: 'v0.1',
      applicationIcon: new Icon(Icons.verified_user),
      icon: new Icon(Icons.info, color: Colors.yellow),
      aboutBoxChildren: <Widget>[
        new Text("Developed by:"),
        new Text("Nicholas von Klitzing"),
        new Text("Kevin Brazile")
      ],
    );

    var drawerChildren = [
      drawerHeader,
      getDrawerItem(Icons.home, 'Home', '/HomePage'),
      getDrawerItem(Icons.book, 'Lions Journal', '/LionsJournalPage'),
      getDrawerItem(Icons.schedule, 'Schedule', '/SchedulePage'),
      getDrawerItem(Icons.help, 'Useful Links', '/UsefulLinksPage'),
      getDrawerItem(Icons.settings, 'Settings', '/SettingsPage'),
      drawerAboutItem
    ];

    var drawerView = new ListView(children: drawerChildren);
    var drawer = new Drawer(
        child: new Container(child: drawerView, color: new Color(0xFF005A84)));

    return new Scaffold(
      drawer: drawer,
      appBar: new AppBar(
        title: new Text(
          "Home",
          style:
              new TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
        ),
//        iconTheme: new IconThemeData(color: Colors.yellow),
//        backgroundColor: new Color(0xFF005A84),
      ),
      body: new ListView.builder(
        padding:
            new EdgeInsets.only(bottom: 20.0, top: 0.0, left: 8.0, right: 8.0),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new WordPressPostCard(
            title: data[index]['title']['rendered']
                .replaceAll(new RegExp(r'<[^>]*>|\[.*\]|\&.*;'), ''),
            content: data[index]['content']['rendered']
                .replaceAll(new RegExp(r'<[^>]*>|\&.*;'), ''),
            url: data[index]['link'],
          );
        },
      ),
    );
  }

  fetch_posts() async {
    var httpClient = new HttpClient();
    httpClient.addCredentials(Uri.parse("https://blogs.zis.ch/us/wp-json/wp/v2/posts"), "Protected", new HttpClientBasicCredentials("", ""));
    var request = await httpClient
        .getUrl(Uri.parse("https://blogs.zis.ch/us/wp-json/wp/v2/posts"));
    var response = await request.close();
    var responseBody = await response.transform(UTF8.decoder).join();
    setState(() {
      data = JSON.decode(responseBody);
    });
  }

//TODO: Fix login screen
  void initState() {
//  if (_readAuth() == null) {
//    SchedulerBinding.instance.addPostFrameCallback((_) {
//      Navigator.of(context).pushNamed("/LoginPage");
//    });
//  }
    fetch_posts();
  }
}
