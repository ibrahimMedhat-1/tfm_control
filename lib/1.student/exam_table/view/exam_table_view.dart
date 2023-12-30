import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/1.student/exam_table/view/widgets/exam_table.dart';
import '../manager/exam_table_cubit.dart';

class ExamTableView extends StatelessWidget {
  const ExamTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamTableCubit(),
      child: BlocConsumer<ExamTableCubit, ExamTableState>(
        listener: (context, state) {},
        builder: (context, state) {
          ExamTableCubit cubit = ExamTableCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('Exam Table'),
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                StudentExamTable(
                  cubit: cubit,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
