import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/subjects/view/widgets/floating_button.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class SubjectsView extends StatelessWidget {
  final List<String> subjects = [
    "Maths",
    "English",
    "Science",
    "History",
    "Geography",
    "Art",
    "English",
    "Science",
    "History",
    "Geography",
    "Art",
    "English",
    "Science",
    "History",
    "Geography",
    "Art"
  ];

   SubjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    int gridCount = MediaQuery.of(context).size.width > 600 ? 6 : 4;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsAsset.kPrimary,
        title: const Text(
          'Univeristy Subjects ',
          style: TextStyle( color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return Container(
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
          );
        },
      ),
      floatingActionButton: const FloatingButton(),
    );
  }
}
