import 'package:flutter/material.dart';
import 'package:myzis_c/ScheduleCard.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key key}) : super(key: key);

  static const String routeName = "/SchedulePage";


  @override
  _SchedulePageState createState() => new _SchedulePageState();
}

//Examle Schedule
class _SchedulePageState extends State<SchedulePage> {
  //Powerschool fetching schedule

  static const List<ScheduleCard> sampleSchedule = const <ScheduleCard> [
    const ScheduleCard(className: "AP Physics 1", duration: "08:45 - 10:05", room: "215", teacher: "Flynn, Antony"),
    const ScheduleCard(className: "Advisory", duration: "10:15 - 10:45", room: "106", teacher: "Peake, Geoffrey"),
    const ScheduleCard(className: "Coordinated Science 2", duration: "10:50 - 12:10", room: "219", teacher: "Kanoria, Diya"),
    const ScheduleCard(className: "Lunch", duration: "12:10 - 12:55"),
    const ScheduleCard(className: "English 10", duration: "13:00 - 14:20", room: "110", teacher: "Hinebauch, Garret"),
    const ScheduleCard(className: "Concert Band", duration: "14:30 - 15:50", room: "200", teacher: "Sons, Tracy"),
  ];

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: days.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Schedule', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow)),
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
          children: days.map((String day) {
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new ListView(children: sampleSchedule), //TODO: Display cards
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

  void _onFloatingActionButtonPressed() {
  }
}