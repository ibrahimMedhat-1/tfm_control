import 'package:flutter/material.dart';

import '../../../../3.admin/Students/view/widgets/custom_textfield.dart';
import '../../../../utils/styles/colors.dart';

void showGradeDialog(String subject, String student,BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Enter Grade'),
        content: MyTextField(
          hintText: 'Grade for $student in $subject',
          onSubmitted: (String value) {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsAsset.kPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Border radius
              ),
            ),
            child: const Text(
              'cancel',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsAsset.kPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Border radius
              ),
            ),
            child: const Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
    },
  );
}