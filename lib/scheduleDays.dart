import 'package:myzis_c/ScheduleCard.dart';
class scheduleDays {
  static final List<List<ScheduleCard>> weeklySchedule = [
    mondaySchedule,
    tuesdaySchedule,
    wednesdaySchedule,
    thursdaySchedule,
    fridaySchedule
  ];
  static const List<ScheduleCard> mondaySchedule = const <ScheduleCard>[
    const ScheduleCard(
        className: "AP Physics 1",
        duration: "08:45 - 10:05",
        room: "215",
        teacher: "Flynn, Antony"),
    const ScheduleCard(
        className: "Advisory",
        duration: "10:15 - 10:35",
        room: "106",
        teacher: "Peake, Geoffrey"),
    const ScheduleCard(
        className: "Coordinated Science 2",
        duration: "10:40 - 12:00",
        room: "219",
        teacher: "Kanoria, Diya"),
    const ScheduleCard(className: "Lunch", duration: "12:00 - 12:55"),
    const ScheduleCard(
        className: "English 10",
        duration: "13:00 - 14:20",
        room: "110",
        teacher: "Hinebauch, Garret"),
    const ScheduleCard(
        className: "Concert Band",
        duration: "14:30 - 15:50",
        room: "200",
        teacher: "Sons, Tracy"),
  ];

  static const List<ScheduleCard> tuesdaySchedule = const <ScheduleCard>[
    const ScheduleCard(
        className: "AP World History",
        duration: "08:45 - 10:05",
        room: "100",
        teacher: "Bixon, Dan"),
    const ScheduleCard(
        className: "Advisory",
        duration: "10:15 - 10:45",
        room: "106",
        teacher: "Peake, Geoffrey"),
    const ScheduleCard(
        className: "German 10 Standard",
        duration: "10:50 - 12:10",
        room: "210",
        teacher: "Heller, Beat"),
    const ScheduleCard(className: "Lunch", duration: "12:10 - 12:55"),
    const ScheduleCard(
        className: "Math 10 Honors",
        duration: "13:00 - 14:20",
        room: "109",
        teacher: "Lobland, Joel"),
    const ScheduleCard(
        className: "PE10 Fitness Wellness",
        duration: "14:30 - 15:50",
        room: "Gym",
        teacher: "Myndio, Jessica"),
  ];

  static const List<ScheduleCard> wednesdaySchedule = const <ScheduleCard>[
    const ScheduleCard(
        className: "AP Physics 1",
        duration: "09:55 - 11:10",
        room: "215",
        teacher: "Flynn, Antony"),
    const ScheduleCard(
        className: "Coordinated Science 2",
        duration: "11:15 - 12:30",
        room: "219",
        teacher: "Kanoria, Diya"),
    const ScheduleCard(className: "Lunch", duration: "12:30 - 13:10"),
    const ScheduleCard(
        className: "English 10",
        duration: "13:15 - 14:30",
        room: "110",
        teacher: "Hinebauch, Garret"),
    const ScheduleCard(
        className: "Concert Band",
        duration: "14:35 - 15:50",
        room: "200",
        teacher: "Sons, Tracy"),
  ];

  static const List<ScheduleCard> thursdaySchedule = const <ScheduleCard>[
    const ScheduleCard(
        className: "PE10 Fitness Wellness",
        duration: "08:45 - 10:05",
        room: "Gym",
        teacher: "Myndio, Jessica"),
    const ScheduleCard(
        className: "Advisory",
        duration: "10:15 - 10:45",
        room: "106",
        teacher: "Peake, Geoffrey"),
    const ScheduleCard(
        className: "AP World History",
        duration: "10:50 - 12:10",
        room: "100",
        teacher: "Bixon, Dan"),
    const ScheduleCard(className: "Lunch", duration: "12:10 - 12:55"),
    const ScheduleCard(
        className: "German 10 Standard ",
        duration: "13:00 - 14:20",
        room: "210",
        teacher: "Heller, Beat"),
    const ScheduleCard(
        className: "Math 10 Honors",
        duration: "14:30 - 15:50",
        room: "109",
        teacher: "Lobland, Joel"),
  ];

  static const List<ScheduleCard> fridaySchedule = const <ScheduleCard>[
    const ScheduleCard(
        className: "Concert Band",
        duration: "08:45 - 10:05",
        room: "200",
        teacher: "Sons, Tracy"),
    const ScheduleCard(
        className: "Advisory",
        duration: "10:15 - 10:35",
        room: "106",
        teacher: "Peake, Geoffrey"),
    const ScheduleCard(
        className: "AP Physics 1",
        duration: "10:40 - 12:00",
        room: "215",
        teacher: "Flynn, Antony"),
    const ScheduleCard(className: "Lunch", duration: "12:00 - 12:55"),
    const ScheduleCard(
        className: "Coordinated Science II",
        duration: "13:00 - 14:20",
        room: "219",
        teacher: "Kanoria, Diya"),
    const ScheduleCard(
        className: "English 10",
        duration: "14:30 - 15:50",
        room: "110",
        teacher: "Hinebauch, Garret"),
  ];
}