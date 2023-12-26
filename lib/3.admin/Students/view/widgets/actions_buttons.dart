import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '../../../Edit_Students/view/edit_student_info.dart';

Widget actionButtons(BuildContext context, int index) {
  return Row(
    children: [
      IconButton(
        icon: const Icon(Icons.edit, color: ColorsAsset.kPrimary),
        onPressed: () {
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditStudentView(),));
        },
      ),
      IconButton(
        icon: const Icon(Icons.delete, color: ColorsAsset.kPrimary),
        onPressed: () {
          // Delete action
        },
      ),
    ],
  );
}