import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/2.professor/student_grades/manager/add_student_grades_cubit.dart';

import '../../../utils/styles/colors.dart';
import 'choose semester.dart';

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
                'Choose Major',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: ColorsAsset.kPrimary,
            ),
            body: ListView(
              children: cubit.Majors.keys.map((String majors) {
                return Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      tileColor: ColorsAsset.klightblue,
                      title: Text(majors),
                      onTap: () {
                        setState(() {
                          cubit.isExpanded[majors] =
                              !cubit.isExpanded[majors]!;
                        });
                      },
                    ),
                    if (cubit.isExpanded[majors]!)
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: cubit.Majors[majors]!.length,
                        itemBuilder: (BuildContext context, int index) {
                          String major = cubit.Majors[majors]![index];
                          return ListTile(
                            title: Text('${index + 1}. $major'),
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChooseSemester(),)),
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
