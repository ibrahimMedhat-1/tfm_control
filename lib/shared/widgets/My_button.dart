import 'package:flutter/material.dart';

import '../../utils/styles/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsAsset.kPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Border radius
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
