import 'package:flutter/material.dart';

import '../../manager/students_cubit.dart';
import 'custom_textfield.dart';

class StudentRow extends StatelessWidget {
  final StudentsCubit cubit;

  const StudentRow({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyTextField(
          labeltext: 'Student Name',
          controller: cubit.nameController,
        ),
        const SizedBox(width: 25),
        MyTextField(
          labeltext: 'Student ID',
          controller: cubit.idController,
        ),
      ],
    );
  }
}