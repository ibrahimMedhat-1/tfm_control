import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';
import '../add_student_view.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AddStudentPage(),));
      },
      child: const Icon(Icons.add,color: ColorsAsset.kPrimary,),
    );
  }
}