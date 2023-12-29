
import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/Study_Table/view/study_table_view.dart';

import '../../basic_data/view/basic_data_view.dart';
import '../../exam_table/exam_table_view.dart';
import '../../payment/view/payment_view.dart';
import '../../student_grades/view/grades_view.dart';
import '../../student_progress/view/student_progress_view.dart';
import '../../student_registeration/view/student_registeration_view.dart';

class StudentRowList {
  final String title;
  final IconData icon;
  final Widget Function() widgetBuilder;
  bool isSelected;
  dynamic Function(BuildContext)? onTap;

  StudentRowList({
    this.isSelected = false,
    required this.widgetBuilder,
    required this.icon,
    required this.title,
    required dynamic Function(BuildContext) onTap,
  });

  static List<StudentRowList> rowList = [
    StudentRowList(
      isSelected: true,
      widgetBuilder: () =>  const BasicDataView(),
      icon: Icons.person,
      title: "Basic Data",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () =>  const StudentRegisterationView(),
      icon: Icons.app_registration,
      title: "Academic Regestration",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () =>  StudyTableView(),
      icon: Icons.table_chart_outlined,
      title: "Study Time Table",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () =>  ExamTableView(),
      icon: Icons.text_snippet_outlined,
      title: "Exams Time Table",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () =>  StudentProgressView(),
      icon: Icons.analytics_outlined,
      title: "Student Progress",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () =>  const TermSubjectsPage(),
      icon: Icons.grade_outlined,
      title: "Courses Grades",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () =>  const PaymentPage(),
      icon: Icons.payment,
      title: "Electronic Payment",
      onTap: (context) {},
    ),
  ];
}
