import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    Key key,
    this.className,
    this.room,
    this.teacher,
    this.duration,
    this.textSize: 18.0,
  })
      : super(key: key);
  final String className;
  final String room;
  final String teacher;
  final String duration;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    if (className == "Lunch") {
      return new Card(
        child: new Column(
          children: <Widget>[
            new Text(className,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: textSize,
                )),
            new Text(duration),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      );
    } else {
      return new Card(
        child: new Column(
          children: <Widget>[
            new Text(className,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: textSize,
                )),
            new Text(duration),
            new Text(room + "   " + teacher),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      );
    }
  }
}
