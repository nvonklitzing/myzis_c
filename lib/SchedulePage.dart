import 'package:flutter/material.dart';
import 'package:myzis_c/ScheduleCard.dart';
import 'package:myzis_c/scheduleDays.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key key}) : super(key: key);

  static const String routeName = "/SchedulePage";

  @override
  _SchedulePageState createState() => new _SchedulePageState();
}

//Examle Schedule
class _SchedulePageState extends State<SchedulePage> {
  //Powerschool fetching schedule

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: days.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Schedule',
              style: new TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.yellow)),
          bottom: new TabBar(
            isScrollable: true,
            tabs: days.map((String day) {
              return new Tab(
                text: day,
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(
          children: scheduleDays.weeklySchedule.map((List<ScheduleCard> day) {
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child:
                  new ListView(children: day), //TODO: Display cards
            );
          }).toList(),
        ),
        //TODO: Add body and cards
      ),
    );
  }

  //Days of the week for tab bar
  static const List<String> days = const <String>[
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
  ];

  void _onFloatingActionButtonPressed() {}
}
