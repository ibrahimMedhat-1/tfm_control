import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/student_grades/manager/grades_cubit.dart';

import '../../../../utils/styles/colors.dart';

class GradesTable extends StatelessWidget {
  const GradesTable({super.key, required this.cubit});
  final GradesCubit cubit;

  @override
  Widget build(BuildContext context) {
    return  DataTable(
      border: const TableBorder(
        top: BorderSide(color: ColorsAsset.kPrimary),
        bottom: BorderSide(color: ColorsAsset.kPrimary),
        right: BorderSide(color: ColorsAsset.kPrimary),
        left: BorderSide(color: ColorsAsset.kPrimary),
        verticalInside: BorderSide(color: ColorsAsset.kPrimary),
      ),
      columns: const [
        DataColumn(label: Text('Subject')),
        DataColumn(label: Text('Code')),
        DataColumn(label: Text('Grade')),
      ],
      rows: cubit.subjects
          .map(
            (subject) =>
            DataRow(
              cells: [
                DataCell(Text(subject.name)),
                DataCell(Text(subject.code.toString())),
                DataCell(Text(subject.gradeSymbol!)),
              ],
            ),
      )
          .toList(),
    );
  }
}
