import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/student_registeration/manager/registeration_cubit.dart';

Widget createWeekScheduleTable({required RegisterationCubit cubit}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: DataTable(
      columns: cubit.weekSchedule.keys.map((day) => DataColumn(label: Text(day))).toList(),
      rows: cubit.createRowsForSchedule(),
    ),
  );
}