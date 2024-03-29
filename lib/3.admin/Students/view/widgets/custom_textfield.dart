import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';

class MyTextField extends StatelessWidget {
   MyTextField({super.key,  this.labeltext, this.controller,this.prefixIcon,this.suffixIcon,this.hintText,this.onSubmitted});
  final String? labeltext;
  final String? hintText;
  final TextEditingController? controller;
   void Function(String)? onSubmitted;
  Widget? prefixIcon;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: TextField(
        controller: controller,
        onSubmitted:onSubmitted ,
        decoration: InputDecoration(
          labelText: labeltext,
          hintText:hintText ,
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
