import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/exam_table/manager/exam_table_cubit.dart';

import '../../../../utils/styles/colors.dart';

class StudentExamTable extends StatelessWidget {
  const StudentExamTable({super.key, required this.cubit});
  final ExamTableCubit cubit;

  @override
  Widget build(BuildContext context) {
    return  DataTable(
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
      rows: cubit.data.map((entry) {
        return DataRow(cells: [
          DataCell(Text(entry.day)),
          DataCell(Text(entry.subjectName)),
          DataCell(Text(entry.place)),
          DataCell(Text(entry.time)),
          DataCell(Text(entry.seatNumber.toString())),
          DataCell(Text(entry.committee.toString())),
        ]);
      }).toList(),
    );
  }
}
