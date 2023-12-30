import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/2.professor/student_grades/manager/add_student_grades_cubit.dart';
import 'package:tfm_control/2.professor/student_grades/view/widgets/show_dialog.dart';

import '../../../utils/styles/colors.dart';

class StudentGradesView extends StatefulWidget {
  const StudentGradesView({super.key});

  @override
  StudentGradesViewState createState() => StudentGradesViewState();
}

class StudentGradesViewState extends State<StudentGradesView> {
  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddStudentGradesCubit()..expanded(),
      child: BlocBuilder<AddStudentGradesCubit, AddStudentGradesState>(
        builder: (context, state) {
          AddStudentGradesCubit cubit = AddStudentGradesCubit.get(context);

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
              children: cubit.subjects.keys.map((String subject) {
                return Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      tileColor: ColorsAsset.klightblue,
                      title: Text(subject),
                      onTap: () {
                        setState(() {
                          cubit.isExpanded[subject] =
                              !cubit.isExpanded[subject]!;
                        });
                      },
                    ),
                    if (cubit.isExpanded[subject]!)
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: cubit.subjects[subject]!.length,
                        itemBuilder: (BuildContext context, int index) {
                          String student = cubit.subjects[subject]![index];
                          return ListTile(
                            trailing: const Text("Grade = "),
                            title: Text('${index + 1}. $student'),
                            onTap: () =>
                                showGradeDialog(subject, student, context),
                          );
                        },
                      ),
                  ],
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
