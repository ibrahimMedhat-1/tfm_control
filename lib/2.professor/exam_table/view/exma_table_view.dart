
import 'package:flutter/material.dart';

import '../../../utils/styles/colors.dart';

class ExamTableDoctorView extends StatelessWidget {
  ExamTableDoctorView({super.key});
  final List<ExamModel> data = [
    ExamModel(
      day: 'Monday',
      subjectName: 'Mathematics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',

    ),
    ExamModel(
      day: 'tuesday',
      subjectName: 'Network',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',

    ),
    ExamModel(
      day: 'sunday',
      subjectName: 'Physics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',

    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Exam Table',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),

      body: Column(
        children: [
          const SizedBox(height: 20,),
          DataTable(
            border: const TableBorder(
              top: BorderSide(color: ColorsAsset.kPrimary),
              bottom: BorderSide(color: ColorsAsset.kPrimary),
              right: BorderSide(color:  ColorsAsset.kPrimary),
              left: BorderSide(color:  ColorsAsset.kPrimary),
              horizontalInside: BorderSide(color:  ColorsAsset.kPrimary),
              verticalInside: BorderSide(color:  ColorsAsset.kPrimary),
            ),
            columns: const [
              DataColumn(label: Text('Day',style: TextStyle(fontWeight: FontWeight.bold,color:  ColorsAsset.kPrimary),)),
              DataColumn(label: Text('Subject',style: TextStyle(fontWeight: FontWeight.bold,color:  ColorsAsset.kPrimary))),
              DataColumn(label: Text('Place',style: TextStyle(fontWeight: FontWeight.bold,color:  ColorsAsset.kPrimary))),
              DataColumn(label: Text('Time',style: TextStyle(fontWeight: FontWeight.bold,color:  ColorsAsset.kPrimary))),

            ],
            rows: data.map((entry) {
              return DataRow(cells: [
                DataCell(Text(entry.day)),
                DataCell(Text(entry.subjectName)),
                DataCell(Text(entry.place)),
                DataCell(Text(entry.time)),

              ]);
            }).toList(),
          ),
        ],
      ),

    );
  }
}
class ExamModel {
  final String day;
  final String subjectName;
  final String place;
  final String time;


  ExamModel({
    required this.day,
    required this.subjectName,
    required this.place,
    required this.time,

  });
}