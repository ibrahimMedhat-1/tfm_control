import 'package:flutter/material.dart';

import '../../../../models/subject_model.dart';
import '../../../../utils/styles/colors.dart';
import '../../manager/study_table_cubit.dart';

class StudyTable extends StatelessWidget {
  const StudyTable({super.key, required this.cubit});
  final StudyTableCubit cubit;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: cubit.weekSchedule.keys.map((day) {
        List<SubjectModel> subjects = cubit.weekSchedule[day]!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(day, style: const TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold)),
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
