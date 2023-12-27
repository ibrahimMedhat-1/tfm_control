import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/Students/view/students_view.dart';
import 'package:tfm_control/3.admin/exam_sheets/view/exam_sheets_view.dart';
import 'package:tfm_control/3.admin/report/view/report_view.dart';

import '../../majors/view/majors_view.dart';
import '../../subjects/view/subjects_view.dart';

class RowListModel {
  final String title;
  final IconData icon;
  final Widget Function() widgetBuilder;
  bool isSelected;
  dynamic Function(BuildContext)? onTap;

  RowListModel({
    this.isSelected = false,
    required this.widgetBuilder,
    required this.icon,
    required this.title,
    required dynamic Function(BuildContext) onTap,
  });

  static List<RowListModel> rowList = [
    RowListModel(
      isSelected: true,
      widgetBuilder: () => const StudentsView(),
      icon: Icons.person,
      title: "Students",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => SubjectsView(),
      icon: Icons.menu_book,
      title: "Subjects",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => MajorsView(),
      icon: Icons.computer,
      title: "Majors",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => const SizedBox(),
      icon: Icons.analytics,
      title: "Dashboard",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => const ExamSheetsPage(),
      icon: Icons.my_library_books_outlined,
      title: "Exams",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => const ReportPage(),
      icon: Icons.report,
      title: "Report",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => const SizedBox(),
      icon: Icons.settings,
      title: "Settings",
      onTap: (context) {},
    ),
  ];
}
