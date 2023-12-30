import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/2.professor/exam_table/manager/doctor_exam_table_cubit.dart';
import 'package:tfm_control/2.professor/exam_table/view/widgets/exam_table.dart';

import '../../../utils/styles/colors.dart';

class ExamTableDoctorView extends StatelessWidget {
  const ExamTableDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorExamTableCubit(),
      child: BlocBuilder<DoctorExamTableCubit, DoctorExamTableState>(
        builder: (context, state) {
          DoctorExamTableCubit cubit = DoctorExamTableCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              title: const Text(
                'Exam Table',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: ColorsAsset.kPrimary,
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ExamTable(cubit: cubit,),
              ],
            ),
          );
        },
      ),
    );
  }
}
