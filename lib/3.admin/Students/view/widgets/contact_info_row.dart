import 'package:flutter/material.dart';

import '../../manager/students_cubit.dart';
import 'custom_textfield.dart';
class ContactInfoRow extends StatelessWidget {
  final StudentsCubit cubit;

  const ContactInfoRow({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyTextField(
            labeltext: 'city',
            controller: cubit.studentCityController,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: MyTextField(
            labeltext: 'email',
            controller: cubit.studentEmailController,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: MyTextField(
            labeltext: 'phone No.',
            controller: cubit.studentPhoneController,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: MyTextField(
            labeltext: 'address',
            controller: cubit.studentAddressController,
          ),
        ),
      ],
    );
  }
}