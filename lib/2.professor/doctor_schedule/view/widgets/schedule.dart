import 'package:flutter/material.dart';
import 'package:tfm_control/2.professor/doctor_schedule/manager/doctor_schedule_cubit.dart';

import '../../../../models/subject_model.dart';
import '../../../../utils/styles/colors.dart';

class ScheduleTable extends StatelessWidget {
  const ScheduleTable({super.key, required this.cubit});
  final DoctorScheduleCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cubit.weekSchedule.keys.map((day) {
        List<SubjectModel> subjects = cubit.weekSchedule[day]!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(day,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Table(
              border: TableBorder.all(color: ColorsAsset.kMedium),
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
                      child: Text(subject.major.toString()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(subject.name),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(subject.time.toString()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(subject.place.toString()),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        );
      }).toList(),
    );
  }
}
