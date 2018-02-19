import 'package:flutter/material.dart';
import 'package:myzis_c/HomePage.dart';
import 'package:myzis_c/LionsJournalPage.dart';
import 'package:myzis_c/SchedulePage.dart';
import 'package:myzis_c/LoginPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyZIS',
      theme: new ThemeData(
        backgroundColor: new Color(0xFF005A84),
        iconTheme: new IconThemeData(color: Colors.yellow),
        primaryColor: new Color(0xFF005A84),

      ),
      home: new HomePage(title: 'Home'),
      routes: <String, WidgetBuilder>{
        HomePage.routeName : (BuildContext context) => new HomePage(),
        LionsJournalPage.routeName : (BuildContext context) => new LionsJournalPage(),
        SchedulePage.routeName : (BuildContext context) => new SchedulePage(),
        LoginPage.routeName : (BuildContext context) => new LoginPage(),
//        '/PowerSchoolPage': (BuildContext context) => new PowerSchoolPage(),
//        '/LoginPage': (BuildContext context) => new LoginPage(),
      },
    );
  }
}
