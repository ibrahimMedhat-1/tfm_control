import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/1.student/basic_data/manager/basic_data_cubit.dart';
import 'package:tfm_control/1.student/basic_data/view/widgets/family_data_section.dart';
import 'widgets/contact_data_section.dart';
import 'widgets/personal_data_section.dart';
import 'widgets/previous_certificate_section.dart';

class BasicDataView extends StatelessWidget {
  const BasicDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasicDataCubit(),
      child: BlocConsumer<BasicDataCubit, BasicDataState>(
        listener: (context, state) {},
        builder: (context, state) {
          BasicDataCubit cubit = BasicDataCubit.get(context);

          return Scaffold(
            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    PersonalData(cubit: cubit),
                    FamilyDataSection(cubit: cubit),
                    ContactDataSEction(cubit: cubit),
                    PreviousCertificateSection(cubit: cubit),
                  ],
                )),
          );
        },
      ),
    );
  }
}
