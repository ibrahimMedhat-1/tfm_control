import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/Students/manager/students_cubit.dart';

import '../../../utils/styles/colors.dart';
import 'widgets/add_button.dart';
import 'widgets/contact_info_row.dart';
import 'widgets/family_data_row.dart';
import 'widgets/personal_data_row.dart';
import 'widgets/previous_certificate_row.dart';
import 'widgets/section_title.dart';
import 'widgets/student_row.dart';


class AddStudentPage extends StatelessWidget {
  const AddStudentPage({super.key});

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
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: ColorsAsset.kPrimary,
              title: const Text(
                'Add Student',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  const SectionTitle(title: "Student :-"),
                  StudentRow(cubit: cubit),
                  const SectionTitle(title: "Personal Data :-"),
                  PersonalDataRow(cubit: cubit),
                  const SectionTitle(title: "Family Data :-"),
                  FamilyDataRow(cubit: cubit),
                  const SectionTitle(title: "Contact Info :-"),
                  ContactInfoRow(cubit: cubit),
                  const SectionTitle(title: "Previous Certificate:-"),
                  PreviousCertificateRow(cubit: cubit),
                  const SizedBox(height: 20),
                  const SubmitButton(),
                ],


              ),
            ),
          );
        },
      ),
    );
  }
}

