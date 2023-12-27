import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/exam_sheets/manager/exam_sheets_cubit.dart';
import 'package:tfm_control/3.admin/exam_sheets/view/widgets/major_drop_down.dart';
import 'package:tfm_control/3.admin/exam_sheets/view/widgets/term_selection_widget.dart';

class ExamSheetsPage extends StatelessWidget {
  const ExamSheetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamSheetsCubit(),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            MajorsDropDown(),
            SizedBox(height: 30),
            TermSelection(),
          ],
        ),
      ),
    );
  }
}
