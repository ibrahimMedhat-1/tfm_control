import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/2.professor/doctor_schedule/manager/doctor_schedule_cubit.dart';
import 'package:tfm_control/2.professor/doctor_schedule/view/widgets/schedule.dart';
import '../../../utils/styles/colors.dart';

class DoctorScheduleView extends StatelessWidget {
  const DoctorScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorScheduleCubit(),
      child: BlocBuilder<DoctorScheduleCubit, DoctorScheduleState>(
        builder: (context, state) {
          DoctorScheduleCubit cubit = DoctorScheduleCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              title: const Text(
                'My Schedule',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: ColorsAsset.kPrimary,
            ),
            body: SingleChildScrollView(
              child: ScheduleTable(cubit: cubit),
            ),
          );
        },
      ),
    );
  }
}
