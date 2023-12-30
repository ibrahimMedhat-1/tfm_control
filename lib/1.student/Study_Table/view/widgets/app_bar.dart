import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '../subjects_details.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Weekly Study Schedule'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child:
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsAsset.kPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Subjects Details',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SubjectDetails(),));
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
