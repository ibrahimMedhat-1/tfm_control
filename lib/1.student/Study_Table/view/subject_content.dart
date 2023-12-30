import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/Study_Table/view/widgets/material_list.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import 'widgets/video_list.dart';

class SubjectContentView extends StatelessWidget {
  const SubjectContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Subject Content',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),
      body: Column(
        children: [
          const ListTile(
            tileColor: ColorsAsset.klightblue,
            title:Text("Subject Materials", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)) ,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: materialList(context),
            ),
          ),
          const Divider(),
          const ListTile(
            tileColor: ColorsAsset.klightblue,
            title:Text("Subject Videos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)) ,
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: videoList(context),
            ),
          ),
        ],
      ),
    );
  }




}
