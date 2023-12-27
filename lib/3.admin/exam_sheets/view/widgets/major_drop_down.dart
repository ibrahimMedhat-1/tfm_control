import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/exam_sheets/manager/exam_sheets_cubit.dart';

import '../../../../utils/styles/colors.dart';

class MajorsDropDown extends StatelessWidget {
  const MajorsDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamSheetsCubit, ExamSheetsState>(
      listener: (context, state) {},
      builder: (context, state) {
        ExamSheetsCubit cubit = ExamSheetsCubit.get(context);
        return DropdownButtonFormField<String>(
          value: cubit.majorsButtonValue,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsAsset.kPrimary),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsAsset.kPrimary),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsAsset.kPrimary),
            ),
            labelText: 'Majors',
          ),
          items: const [
            DropdownMenuItem(value: 'Computer Science', child: Text('Computer Science')),
            DropdownMenuItem(value: 'Information System', child: Text('Information System')),
          ],
          onChanged: (value) {
            cubit.changeMajorsButtonValue(value!);
          },
        );
      },
    );
  }
}
