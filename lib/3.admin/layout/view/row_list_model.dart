
import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/layout/view/widgets/dashboard.dart';
import 'package:tfm_control/3.admin/Students/view/students_view.dart';

class RowListModel {
  final String title;
  final IconData icon;
  final Widget Function() widgetBuilder;

   dynamic Function(BuildContext)? onTap;
  RowListModel( {
    required this.widgetBuilder,
    required this.icon,
    required this.title,
    required dynamic Function(BuildContext) onTap,
  });
  static List<RowListModel> rowList = [
    RowListModel(
      widgetBuilder: () => const StudentsView(),
      icon: Icons.person,
        title: "Students",
        onTap: (context){}
    ),


    RowListModel(
        widgetBuilder: () => const Dashboard(),
        icon: Icons.menu_book,
        title: "Subjects",
      onTap: (context){}

       ),
    RowListModel(
      widgetBuilder: () => const StudentsView(),
      icon: Icons.computer,
      title: "Majors",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => const StudentsView(),
      icon: Icons.analytics,
      title: "Dashboard",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => const StudentsView(),
      icon: Icons.my_library_books_outlined,
      title: "Exams",
      onTap: (context) {},
    ),
    RowListModel(
      widgetBuilder: () => const StudentsView(),
      icon: Icons.settings,
      title: "Settings",
      onTap: (context) {},
    ),
  ];
}
