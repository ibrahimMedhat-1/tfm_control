import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

Widget actionButtons(BuildContext context, int index) {
  return Row(
    children: [
      IconButton(
        icon: const Icon(Icons.edit, color: ColorsAsset.kPrimary),
        onPressed: () {
          // Edit action
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