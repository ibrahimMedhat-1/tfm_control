import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/Students/view/widgets/custom_textfield.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '../manager/subjects_cubit.dart';
import 'widgets/add_button.dart';
import 'widgets/custom_drop_down_menu.dart';

class AddSubjectView extends StatelessWidget {
  const AddSubjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectsCubit(),
      child: BlocConsumer<SubjectsCubit, SubjectsState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          SubjectsCubit cubit = SubjectsCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorsAsset.kPrimary,
              title: const Text(
                "Add Subject", style: TextStyle(color: Colors.white),),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height:30,),
                  Row(
                    children: [
                    MyTextField(labeltext: "Subject Name"),
                    const SizedBox(width:15,),
                    MyTextField(labeltext: "Subject Code"),
                  ],
                  ),
                  const SizedBox(height:25,),
                  Row(
                    children: [
                      Flexible(
                        child: CustomDropdownFormField(
                          items:cubit.places,
                          labelText: 'Place',
                          onChanged:(String? newValue) {
                            cubit.setSelectPlace(newValue!);
                          },
                          selectedValue:cubit.selectedPlace,
                        ),
                      ),
                      const SizedBox(width:15,),
                      Flexible(
                        child: CustomDropdownFormField(
                          items:cubit.years,
                          labelText: 'Year',
                          onChanged:(String? newValue) {
                            cubit.setSelectyear(newValue!);
                          },
                          selectedValue:cubit.selectedYear,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height:25,),
                  Row(
                    children: [
                      Flexible(
                        child: CustomDropdownFormField(
                          items:cubit.major,
                          labelText: 'Major',
                          onChanged:(String? newValue) {
                            cubit.setSelectMAjor(newValue!);
                          },
                          selectedValue:cubit.selectedMajor,
                        ),
                      ),
                      const SizedBox(width:15,),
                      Flexible(
                        child: CustomDropdownFormField(
                          items:cubit.term,
                          labelText: 'Term',
                          onChanged:(String? newValue) {
                            cubit.setSelectTerm(newValue!);
                          },
                          selectedValue:cubit.selectedTerm,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height:25,),
                  Row(
                    children: [
                      Flexible(
                        child: CustomDropdownFormField(
                          items:cubit.days,
                          labelText: 'Day',
                          onChanged:(String? newValue) {
                            cubit.setSelectDAy(newValue!);
                          },
                          selectedValue:cubit.selectedday,
                        ),
                      ),
                      const SizedBox(width:15,),
                      Flexible(
                        child: CustomDropdownFormField(
                          items:cubit.type,
                          labelText: 'Type',
                          onChanged:(String? newValue) {
                            cubit.setSelectType(newValue!);
                          },
                          selectedValue:cubit.selectedType,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height:25,),
                  Row(
                    children: [
                      MyTextField(labeltext: "Doctor Name"),
                      const SizedBox(width:15,),
                      MyTextField(labeltext: "Time"),
                    ],
                  ),
                  const SizedBox(height:25,),
                  const AddButton(),



                ],
              ),
            ),

          );
        },
      ),
    );
  }
}
