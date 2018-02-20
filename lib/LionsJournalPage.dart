import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
//import 'package:url_launcher/url_launcher.dart';


//TODO: Show loading symbol while fetching posts
//TODO: Open link when clicked on
class LionsJournalPage extends StatefulWidget {
  LionsJournalPage({Key key}) : super(key: key);

  static const String routeName = "/LionsJournalPage";
  @override
  _LionsJournalPageState createState() => new _LionsJournalPageState();
}

class _LionsJournalPageState extends State<LionsJournalPage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Lion\'s Journal', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),),
      ),
      body: new ListView.builder(
        padding: new EdgeInsets.only(bottom: 20.0, top: 0.0, left: 8.0, right: 8.0),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            onTap: () {
//              _launchUrl(data[index]['link']);
            },
            child: new Card(
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.only(top: 4.0, left: 8.0),
                    child: new Text(
                      data[index]['title']['rendered']
                          .replaceAll(new RegExp(r'<[^>]*>|\[.*\]|\&.*;'), ''), //Removes weird characters
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //TODO Insert Date and Author (Add featured Media)
                  new Padding(
                    padding: new EdgeInsets.all(8.0),
                    child: new Text(
                      data[index]['content']['rendered']
                          .toString()
                          .replaceAll(new RegExp(r'<[^>]*>|\&.*;'), ''),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  fetch_posts() async {
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(Uri.parse("https://blogs.zis.ch/lionsjournal/wp-json/wp/v2/posts"));
    var response = await request.close();
    var responseBody = await response.transform(UTF8.decoder).join();
    setState(() {
      data = JSON.decode(responseBody);
    });
  }

//  _launchUrl(String url) async {
//    if (await canLaunch(url)) {
//      await launch(url);
//    } else {
//      throw 'Could not launch $url';
//    }
//  }

  void initState() {
    fetch_posts();
  }
}