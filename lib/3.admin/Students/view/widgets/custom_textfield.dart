import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';

class MyTextField extends StatelessWidget {
   MyTextField({super.key, required this.labeltext, this.controller,this.prefixIcon,this.suffixIcon});
  final String labeltext;
  final TextEditingController? controller;
  Widget? prefixIcon;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labeltext,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsAsset.kPrimary
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsAsset.kPrimary
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsAsset.kPrimary
            ),
          ),
        ),
      ),
    );
  }
}
