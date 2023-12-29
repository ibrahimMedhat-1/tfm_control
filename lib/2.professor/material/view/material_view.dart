import 'package:flutter/material.dart';
import 'package:tfm_control/2.professor/material/view/upload_material_view.dart';

import '../../../utils/styles/colors.dart';

class MaterialView extends StatelessWidget {
  const MaterialView({super.key});


  @override
  Widget build(BuildContext context) {
    final List<String> subjects = [
      "English",
      "Network",
      "MAth",
      "Science",
      "History",
      "Geography",
      "Art"
    ];
    int gridCount = MediaQuery.of(context).size.width > 600 ? 6 : 4;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Subjects',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const UploadMaterialView()));
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

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}