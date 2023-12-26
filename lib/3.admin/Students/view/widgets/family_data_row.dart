import 'package:flutter/material.dart';

import '../../manager/students_cubit.dart';
import 'custom_textfield.dart';

class FamilyDataRow extends StatelessWidget {
  final StudentsCubit cubit;

  const FamilyDataRow({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MyTextField(
              labeltext: 'Parent Name',
              controller: cubit.parentNameController,
            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'Parent Job',
              controller: cubit.parentJobController,
            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'city',
              controller: cubit.parentcityController,
            ),

          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            MyTextField(
              labeltext: 'address',
              controller: cubit.parentAddressController,
            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'email',
              controller: cubit.parentEmailController,
            ),
            const SizedBox(width: 10,),
            MyTextField(
              labeltext: 'phone No.',
              controller: cubit.parentPhoneController,
            ),
          ],
        ),
      ],
    );
  }
}