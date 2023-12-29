import 'package:flutter/material.dart';

import '../../../utils/styles/colors.dart';



class DoctorScheduleView extends StatelessWidget {
  final Map<String, List<SubjectModel>> weekSchedule = {
    "Saturday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "sunday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Monday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Tuesday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Wednesday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Thursday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
  };

  DoctorScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'My Schedule',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: weekSchedule.keys.map((day) {
            List<SubjectModel> subjects = weekSchedule[day]!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(day, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Table(
                  border: TableBorder.all(
                      color: ColorsAsset.kMedium
                  ),
                  columnWidths: const {
                    0: FlexColumnWidth(3),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(2),
                  },
                  children: subjects.map((subject) {
                    return TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(subject.major),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(subject.name),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(subject.time),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(subject.place),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
class SubjectModel {
  String major;
  String name;
  String time;
  String place;

  SubjectModel({required this.name, required this.time, required this.place,required this.major});
}

