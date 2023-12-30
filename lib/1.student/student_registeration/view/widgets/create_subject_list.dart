import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/student_registeration/manager/registeration_cubit.dart';

import '../../../../utils/styles/colors.dart';

Widget createSubjectList({required RegisterationCubit cubit}) {
  return ListView.builder(
    itemCount: cubit.availableSubjects.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          tileColor: ColorsAsset.klightblue,
          title: Text(cubit.availableSubjects[index].name),
          subtitle: Text("Professor: ${cubit.availableSubjects[index].professor}, Time: ${cubit.availableSubjects[index].time}"),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsAsset.kPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Border radius
              ),
            ),
            child: const Text('Add',style: TextStyle(color: Colors.white),),
            onPressed: () {
              cubit.addSubject(index);
            },
          ),
        ),
      );
    },
  );
}