import 'package:flutter/material.dart';
import 'package:tfm_control/2.professor/exam_table/manager/doctor_exam_table_cubit.dart';

import '../../../../utils/styles/colors.dart';

class ExamTable extends StatelessWidget {
  const ExamTable({super.key, required this.cubit});
  final DoctorExamTableCubit cubit;

  @override
  Widget build(BuildContext context,) {
    return  DataTable(
      border: const TableBorder(
        top: BorderSide(color: ColorsAsset.kPrimary),
        bottom: BorderSide(color: ColorsAsset.kPrimary),
        right: BorderSide(color: ColorsAsset.kPrimary),
        left: BorderSide(color: ColorsAsset.kPrimary),
        horizontalInside: BorderSide(color: ColorsAsset.kPrimary),
        verticalInside: BorderSide(color: ColorsAsset.kPrimary),
      ),
      columns: const [
        DataColumn(
            label: Text(
              'Day',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorsAsset.kPrimary),
            )),
        DataColumn(
            label: Text('Subject',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorsAsset.kPrimary))),
        DataColumn(
            label: Text('Place',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorsAsset.kPrimary))),
        DataColumn(
            label: Text('Time',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorsAsset.kPrimary))),
      ],
      rows: cubit.data.map((entry) {
        return DataRow(cells: [
          DataCell(Text(entry.day)),
          DataCell(Text(entry.subjectName)),
          DataCell(Text(entry.place)),
          DataCell(Text(entry.time)),
        ]);
      }).toList(),
    );
  }
}
