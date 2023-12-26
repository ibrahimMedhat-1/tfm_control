import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/Edit_Students/view/widgets/edit_contact_info_row.dart';
import 'package:tfm_control/3.admin/Edit_Students/view/widgets/save_button.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '../manager/edit_student_cubit.dart';
import 'widgets/student_main_data_section.dart';

class EditStudentView extends StatelessWidget {
  const EditStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditStudentCubit(),
      child: BlocConsumer<EditStudentCubit, EditStudentState>(
        listener: (context, state) {},
        builder: (context, state) {
          EditStudentCubit cubit = EditStudentCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorsAsset.kPrimary,
              title: const Text(
                "Edit Student", style: TextStyle(color: Colors.white),),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    const Text("Student Main Data", style: TextStyle(
                        color: ColorsAsset.kPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),),
                    const SizedBox(height: 20,),
                    MainDataSection(cubit: cubit),
                    const SizedBox(height: 20,),
                    const Text("Contact Information", style: TextStyle(
                        color: ColorsAsset.kPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),),
                    const SizedBox(height: 10,),
                    EditContactInfoRow(cubit: cubit),
                    const SizedBox(height: 30,),
                    const SaveButton()

                ]
                ),
              ),

            ),
          );
        },
      ),
    );
  }
}
