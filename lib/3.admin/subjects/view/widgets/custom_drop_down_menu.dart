import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class CustomDropdownFormField extends StatelessWidget {
  final String? selectedValue;
  final List<String> items;
  final String labelText;
  final ValueChanged<String?> onChanged;

  const CustomDropdownFormField({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.labelText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsAsset.kPrimary,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsAsset.kPrimary,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsAsset.kPrimary,
          ),
        ),
        labelText: labelText,
      ),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}