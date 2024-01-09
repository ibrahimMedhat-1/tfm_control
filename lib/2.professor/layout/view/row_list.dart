import 'package:flutter/material.dart';

import '../../doctor_schedule/view/doctor_schedule_view.dart';
import '../../exam_table/view/exma_table_view.dart';
import '../../material/view/material_view.dart';
import '../../student_grades/view/student_grades_view.dart';

class DoctorRowList {
  final String title;
  final IconData icon;
  final Widget Function() widgetBuilder;
  bool isSelected;
  dynamic Function(BuildContext)? onTap;

  DoctorRowList({
    this.isSelected = false,
    required this.widgetBuilder,
    required this.icon,
    required this.title,
    required dynamic Function(BuildContext) onTap,
  });

  static List<DoctorRowList> rowList = [
    DoctorRowList(
      isSelected: true,
      widgetBuilder: () =>   const DoctorScheduleView(),
      icon: Icons.app_registration,
      title: "My Schedule",
      onTap: (context) {},
    ),
    DoctorRowList(
      widgetBuilder: () =>    const StudentGradesView(),
      icon: Icons.grade_outlined,
      title: "Students Grades",
      onTap: (context) {},
    ),
    DoctorRowList(
      widgetBuilder: () =>  const MaterialView(),
      icon: Icons.file_copy_outlined,
      title: "Courses Material",
      onTap: (context) {},
    ),
    DoctorRowList(
      widgetBuilder: () =>   const ExamTableDoctorView(),
      icon: Icons.text_snippet_outlined,
      title: "Exams Time Table",
      onTap: (context) {},
    ),

  ];
}
