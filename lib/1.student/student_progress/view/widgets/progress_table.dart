import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/student_progress/manager/progress_cubit.dart';

import '../../../../utils/styles/colors.dart';

class ProgressTable extends StatelessWidget {
  const ProgressTable({super.key, required this.cubit});
  final ProgressCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DataTable(
            border: const TableBorder(
              top: BorderSide(color: ColorsAsset.kPrimary),
              bottom: BorderSide(color: ColorsAsset.kPrimary),
              right: BorderSide(color: ColorsAsset.kPrimary),
              left: BorderSide(color: ColorsAsset.kPrimary),
            ),
            columns: const [
              DataColumn(label: Text('Subject')),
              DataColumn(label: Text('Code')),
              DataColumn(label: Text('Credit Hours')),
              DataColumn(label: Text('Progress')),
            ],
            rows: cubit.subjects.map((subject) {
              return DataRow(cells: [
                DataCell(Text(subject.name.toString())),
                DataCell(Text(subject.code.toString())),
                DataCell(Text(subject.creditHours.toString())),
                DataCell(
                  Icon(
                    subject.isCompleted!
                        ? Icons.check
                        : Icons.close,
                    color: subject.isCompleted!
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
              ]);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
