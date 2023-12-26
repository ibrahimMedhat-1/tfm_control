import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsAsset.kPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Border radius
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
          child: Text(
            'Add Subject',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
