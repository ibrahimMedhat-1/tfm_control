import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/1.student/student_progress/manager/progress_cubit.dart';
import 'widgets/progress_table.dart';

class StudentProgressView extends StatelessWidget {
  const StudentProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProgressCubit(),
      child: BlocConsumer<ProgressCubit, ProgressState>(
        listener: (context, state) {},
        builder: (context, state) {
          ProgressCubit cubit = ProgressCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Student Progress"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text("Student Name"),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Student Code"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text("Student Major"),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Level One"),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ProgressTable(cubit: cubit,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
