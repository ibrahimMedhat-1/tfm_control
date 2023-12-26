import 'package:flutter/material.dart';

import '../../manager/students_cubit.dart';
import 'custom_textfield.dart';

class PreviousCertificateRow extends StatelessWidget {
  final StudentsCubit cubit;

  const PreviousCertificateRow({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            MyTextField(
              labeltext: 'School',
              controller: cubit.schoolController,
            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'certificate name',
              controller: cubit.certificateNameController,
            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'Graduation year',
              controller: cubit.graduationYearController,
            ),
          ],
        ),
      ],
    );
  }
}
