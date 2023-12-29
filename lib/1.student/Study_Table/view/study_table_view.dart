import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import 'subjects_details.dart';

class StudyTableView extends StatelessWidget {
  final Map<String, List<SubjectModel>> weekSchedule = {
    "Saturday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "sunday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Monday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Tuesday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Wednesday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Thursday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
  };

   StudyTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Weekly Study Schedule'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsAsset.kPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                ),
              ),
              child: const Text('Subjects Details',style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SubjectDetails(),));
              },
            ),
          ),
        ],
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
  String name;
  String time;
  String place;

  SubjectModel({required this.name, required this.time, required this.place});
}
