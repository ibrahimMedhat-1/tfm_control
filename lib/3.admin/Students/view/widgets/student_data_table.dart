import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/Students/manager/students_cubit.dart';

import 'actions_buttons.dart';

class StudentsDataTable extends StatelessWidget {
  final StudentsCubit cubit;

  const StudentsDataTable({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('ID')),
        DataColumn(label: Text('Actions')),
      ],
      rows: List.generate(
        cubit.data.length,
            (index) => DataRow(cells: [
          DataCell(Text(cubit.data[index]["name"])),
          DataCell(Text(cubit.data[index]["id"].toString())),
          DataCell(actionButtons(context, index)),
        ]),
      ),
    );
  }


}
