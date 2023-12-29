import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/Students/view/widgets/custom_textfield.dart';

import '../../../utils/styles/colors.dart';




class StudentGradesView extends StatefulWidget {
  const StudentGradesView({super.key});

  @override
  _StudentGradesViewState createState() => _StudentGradesViewState();
}

class _StudentGradesViewState extends State<StudentGradesView> {
  Map<String, List<String>> subjects = {
    'Math': ['Student1', 'student2', 'student3'],
    'Science': ['Student1', 'student2', 'student3'],
  };

  Map<String, bool> isExpanded = {};

  @override
  void initState() {
    super.initState();
    subjects.forEach((key, value) {
      isExpanded[key] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Subjects and Students',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),

      body: ListView(
        children: subjects.keys.map((String subject) {
          return Column(
            children: <Widget>[
              SizedBox(height: 25,),
              ListTile(
                tileColor: ColorsAsset.klightblue,
                title: Text(subject),
                onTap: () {
                  setState(() {
                    isExpanded[subject] = !isExpanded[subject]!;
                  });
                },
              ),
              if (isExpanded[subject]!)
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: subjects[subject]!.length,
                  itemBuilder: (BuildContext context, int index) {
                    String student = subjects[subject]![index];
                    return ListTile(
                      trailing: const Text("Grade = "),
                      title: Text('${index + 1}. $student'),
                      onTap: () => showGradeDialog(subject, student),
                    );
                  },
                ),
            ],
          );
        }).toList(),
      ),
    );
  }

  void showGradeDialog(String subject, String student) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter Grade'),
          content: MyTextField(
            hintText: 'Grade for $student in $subject',
            onSubmitted: (String value) {
              Navigator.of(context).pop();
            },
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsAsset.kPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                ),
              ),
              child: const Text(
                'cancel',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsAsset.kPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
