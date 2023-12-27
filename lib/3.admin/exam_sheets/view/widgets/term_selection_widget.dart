import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/exam_sheets/manager/exam_sheets_cubit.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class TermSelection extends StatelessWidget {
  const TermSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamSheetsCubit, ExamSheetsState>(
      listener: (context, state) {},
      builder: (context, state) {
        ExamSheetsCubit cubit = ExamSheetsCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Checkbox(
                    shape: const CircleBorder(),
                    checkColor: ColorsAsset.kPrimary,
                    activeColor: ColorsAsset.kPrimary,
                    value: cubit.firstTermSelected,
                    onChanged: (value) {
                      cubit.firstTermSelection();
                    }),
                const SizedBox(width: 10),
                const Text(
                  'First Term',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    shape: const CircleBorder(),
                    checkColor: ColorsAsset.kPrimary,
                    activeColor: ColorsAsset.kPrimary,
                    value: cubit.secondTermSelected,
                    onChanged: (value) {
                      cubit.secondTermSelection();
                    }),
                const SizedBox(width: 10),
                const Text(
                  'Second Term',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
