import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/1.student/student_grades/manager/grades_cubit.dart';
import 'package:tfm_control/1.student/student_grades/view/widgets/grades_table.dart';
import 'package:tfm_control/utils/styles/colors.dart';



class TermSubjectsPage extends StatelessWidget {
  const TermSubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GradesCubit(),
      child: BlocConsumer<GradesCubit, GradesState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          GradesCubit cubit = GradesCubit.get(context);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Semester Subjects and Grades',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: ColorsAsset.kPrimary),
                  ),
                  const SizedBox(height: 16.0),
                  GradesTable(cubit: cubit,),
                  const SizedBox(height: 16.0),
                  // Row(
                  //   children: [
                  //     Text(
                  //       'Semester GPA: ${cubit.calculateSemesterGPA().toStringAsFixed(
                  //           2)}',
                  //     ),
                  //     const SizedBox(width: 35.0),
                  //     Text(
                  //       'Total GPA: ${cubit.calculateTotalGPA().toStringAsFixed(2)}',
                  //     ),
                  //   ],
                  // ),
                  const Row(
                    children: [
                      Text(
                        'Total Hours : 18',
                      ),
                      SizedBox(width: 35.0),
                      Text(
                        'Semester GPA : 3.7',
                      ),
                       SizedBox(width: 35.0),
                      Text(
                        'Total GPA: 3.4',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
