import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class ExamTableView extends StatelessWidget {
   ExamTableView({super.key});
  List<ExamModel> data = [
    ExamModel(
      day: 'Monday',
      subjectName: 'Mathematics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',
      seatNumber: '543',
      committee: 'Committee A',
    ),
    ExamModel(
      day: 'tuesday',
      subjectName: 'Network',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',
      seatNumber: '43',
      committee: 'Committee B',
    ),
    ExamModel(
      day: 'sunday',
      subjectName: 'Physics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',
      seatNumber: '543',
      committee: 'Committee C',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Table'),
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
              DataColumn(label: Text('Seat Number',style: TextStyle(fontWeight: FontWeight.bold,color:  ColorsAsset.kPrimary))),
              DataColumn(label: Text('Committee',style: TextStyle(fontWeight: FontWeight.bold,color:  ColorsAsset.kPrimary))),
            ],
            rows: data.map((entry) {
              return DataRow(cells: [
                DataCell(Text(entry.day)),
                DataCell(Text(entry.subjectName)),
                DataCell(Text(entry.place)),
                DataCell(Text(entry.time)),
                DataCell(Text(entry.seatNumber)),
                DataCell(Text(entry.committee)),
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
  final String seatNumber;
  final String committee;

  ExamModel({
    required this.day,
    required this.subjectName,
    required this.place,
    required this.time,
    required this.seatNumber,
    required this.committee,
  });
}