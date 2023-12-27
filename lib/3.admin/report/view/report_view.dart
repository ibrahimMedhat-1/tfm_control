import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/report/view/widgets/export_button_widget.dart';

import 'widgets/report_table_widget.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ExportButton(),
          SizedBox(height: 30),
          ReportTable(),
        ],
      ),
    );
  }
}
