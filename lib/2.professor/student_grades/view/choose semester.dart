import 'package:flutter/material.dart';

import '../../../utils/styles/colors.dart';
import 'add_student_grade.dart';

class ChooseSemester extends StatelessWidget {
  const ChooseSemester({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Choose Semester',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ListTile(
              tileColor: ColorsAsset.klightblue,
              title: const Text("Semester one"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddStudentGrade(),));

              },
            ),
            const SizedBox(height: 15,),
            const ListTile(
              tileColor: ColorsAsset.klightblue,
              title: Text("Semester Two"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),

          ],
        ),
      ),
    );
  }
}
