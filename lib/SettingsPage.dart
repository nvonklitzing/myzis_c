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
        title: new Text('Settings', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Notifications of upcoming classes"
          ),
          new Switch(
              value: false,
              onChanged: (state) {

              },
          ),
        ],
      ),
    );
  }

}