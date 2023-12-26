import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';
import '../../../Students/view/widgets/custom_textfield.dart';
import '../../manager/edit_student_cubit.dart';

class MainDataSection extends StatelessWidget {
  const MainDataSection({super.key, required this.cubit});
  final EditStudentCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MyTextField(
                labeltext: "Student Name",
              controller: cubit.editNameController,
            ),
            const SizedBox(width: 10,),
            MyTextField(labeltext: "Student ID",controller: cubit.editIDController,),
            const SizedBox(width: 10,),
            MyTextField(labeltext: "Student Email",controller: cubit.editEmailController,),
            const SizedBox(width: 10,),
            MyTextField(labeltext: "Password",controller: cubit.editPasswordController,),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            Flexible(
              child: DropdownButtonFormField<String>(
                value: cubit.selectedCountry,
                decoration: const InputDecoration(
                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  labelText: 'Country',
                ),
                items: cubit.countries.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  cubit.setSelectCountry(newValue!);
                },
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: DropdownButtonFormField<String>(
                value: cubit.selectedReligion,
                decoration: const InputDecoration(
                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  labelText: 'Religion',
                ),
                items: cubit.religions.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  cubit.setSelectReligion(newValue!);
                },
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: DropdownButtonFormField<String>(
                value: cubit.selectedGender,
                decoration: const InputDecoration(
                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsAsset.kPrimary
                    ),
                  ),
                  labelText: 'Gender',
                ),
                items: cubit.genders.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  cubit.setSelectGender(newValue!);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            Flexible(
              child:
              GestureDetector(
                onTap: () => cubit.selectDate(context),
                child: AbsorbPointer(
                  child: TextField(
                    controller: cubit.dobController,
                    decoration: const InputDecoration(
                      labelText: 'Date of Birth',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorsAsset.kPrimary
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorsAsset.kPrimary
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorsAsset.kPrimary
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'Birth place',
              controller: cubit.editBirthPlaceController,

            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'National ID',
              controller: cubit.editNationalIdController,

            ),

          ],
        ),
      ],
    );
  }
}
