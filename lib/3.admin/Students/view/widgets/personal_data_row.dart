import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '../../manager/students_cubit.dart';

class PersonalDataRow extends StatelessWidget {
  final StudentsCubit cubit;

  const PersonalDataRow({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
