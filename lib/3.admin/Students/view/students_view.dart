import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/Students/view/widgets/floating_action_button.dart';

import '../manager/students_cubit.dart';
import 'widgets/student_data_table.dart';

class StudentsView extends StatelessWidget {
  const StudentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudentsCubit(),
      child: BlocConsumer<StudentsCubit, StudentsState>(
        listener: (context, state) {},
        builder: (context, state) {
          StudentsCubit cubit = StudentsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              actions: [
                Image.asset('assets/images/profile.png', height: 50,),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            body: Column(
              children: [
                const SizedBox(height: 50),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(minWidth: constraints.maxWidth),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: StudentsDataTable(cubit: cubit),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            floatingActionButton: const FloatingButton(),
          );
        },
      ),
    );
  }
}


