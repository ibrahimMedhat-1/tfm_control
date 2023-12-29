import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/Study_Table/view/subject_content.dart';

import '../../../utils/styles/colors.dart';

class SubjectDetails extends StatelessWidget {
  const SubjectDetails({super.key});


  @override
  Widget build(BuildContext context) {
    final List<String> subjects = [
      "English",
      "Science",
      "History",
      "Geography",
      "Art"
    ];
    int gridCount = MediaQuery.of(context).size.width > 600 ? 6 : 4;
    return Scaffold(
      body:  GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const SubjectContentView()));
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorsAsset.klightblue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    subjects[index],
                    style: const TextStyle(
                      color: ColorsAsset.kPrimary,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "tap to see details",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.009),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
