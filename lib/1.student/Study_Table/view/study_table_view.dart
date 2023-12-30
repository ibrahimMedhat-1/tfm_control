import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/1.student/Study_Table/manager/study_table_cubit.dart';

import 'widgets/app_bar.dart';
import 'widgets/study_table.dart';

class StudyTableView extends StatelessWidget {
  const StudyTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudyTableCubit(),
      child: BlocBuilder<StudyTableCubit, StudyTableState>(
        builder: (context, state) {
          StudyTableCubit cubit = StudyTableCubit.get(context);

          return Scaffold(
            appBar: const CustomAppBar(),
            body: SingleChildScrollView(
              child: StudyTable(cubit: cubit),
            ),
          );
        },
      ),
    );
  }
}
