import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  static const String routeName = "/SettingsPage";

  @override
  _SettingsPageState createState() => new _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Settings',
          style:
              new TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
        ),
      ),
      body: new GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        children: <Widget>[
          new Card(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Notifications"),
                new Switch(
                  value: false,
                  onChanged: (state) {},
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Fetch posts on startup"),
                new Switch(
                  value: true,
                  onChanged: (state) {},
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Save login"),
                new Switch(
                  value: true,
                  onChanged: (state) {},
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Aggressive fetching"),
                new Switch(
                  value: true,
                  onChanged: (state) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
