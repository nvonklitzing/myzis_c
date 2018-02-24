import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WordPressPostCard extends StatelessWidget {
  const WordPressPostCard({
    Key key,
    this.title,
    this.content,
    this.url,
  })
      : super(key: key);

  final String title;
  final String content;
  final String url;

  @override
  Widget build(BuildContext context) {
    _launchUrl(String url) async {
      print("launch method called");
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return new GestureDetector(
      onTap: () {
        if (url != null){
          _launchUrl(url);
        }
//        Navigator.of(context).pushNamed(route == null ? "/" : route);
      },
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(top: 4.0, left: 8.0),
              child: new Text(
                title, //Removes weird characters
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //TODO Insert Date and Author (Add featured Media)
            new Padding(
              padding: new EdgeInsets.all(8.0),
              child: new Text(
                content,
              ),
            ),
          ],
        ),
      ),
    );
  }
}