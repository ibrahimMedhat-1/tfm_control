import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';

void showGradeDialog(  BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(

      title: const Row(
        children: [
          Text('Success',style: TextStyle(color: Colors.green),),
          Icon(Icons.check,color: Colors.green,)
        ],
      ),
      content: const Text('Grade Added Successfuly'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK',style: TextStyle(color: ColorsAsset.kPrimary)),
        ),
      ],
    ),
  );
}
