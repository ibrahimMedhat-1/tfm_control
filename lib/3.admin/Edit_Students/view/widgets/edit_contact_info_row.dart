import 'package:flutter/material.dart';

import '../../../Students/view/widgets/custom_textfield.dart';
import '../../manager/edit_student_cubit.dart';

class EditContactInfoRow extends StatelessWidget {
  const EditContactInfoRow({super.key, required this.cubit});
  final EditStudentCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyTextField(
          labeltext: 'city',
          controller: cubit.editCityController,

        ),
        const SizedBox(width: 10),
        MyTextField(
          labeltext: 'phone No.',
          controller: cubit.editPhoneController,

        ),
        const SizedBox(width: 10),
        MyTextField(
          labeltext: 'address',
          controller: cubit.editAddressController,

        ),
      ],
    );
  }
}
