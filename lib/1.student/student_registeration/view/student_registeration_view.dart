import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/1.student/student_registeration/manager/registeration_cubit.dart';
import 'package:tfm_control/1.student/student_registeration/view/widgets/create_week_table.dart';

import 'widgets/create_subject_list.dart';

class StudentRegisterationView extends StatelessWidget {
  const StudentRegisterationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => RegisterationCubit(),
  child: BlocConsumer<RegisterationCubit, RegisterationState>(
  listener: (context, state) {
  },
  builder: (context, state) {
    RegisterationCubit cubit = RegisterationCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subject Scheduler"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: createSubjectList(cubit: cubit),
          ),
          const Divider(),
          Expanded(
            child: createWeekScheduleTable(cubit: cubit),
          )
        ],
      ),
    );
  },
),
);
  }
}


