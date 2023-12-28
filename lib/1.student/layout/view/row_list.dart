
import 'package:flutter/material.dart';

import '../../basic_data/view/basic_data_view.dart';

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
      widgetBuilder: () => const SizedBox(),
      icon: Icons.app_registration,
      title: "Academic Regestration",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () => const SizedBox(),
      icon: Icons.table_chart_outlined,
      title: "Study Time Table",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () => const SizedBox(),
      icon: Icons.text_snippet_outlined,
      title: "Exams Time Table",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () => const SizedBox(),
      icon: Icons.analytics_outlined,
      title: "Student Progress",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () => const SizedBox(),
      icon: Icons.grade_outlined,
      title: "Courses Grades",
      onTap: (context) {},
    ),
    StudentRowList(
      widgetBuilder: () => const SizedBox(),
      icon: Icons.payment,
      title: "Electronic Payment",
      onTap: (context) {},
    ),
  ];
}
