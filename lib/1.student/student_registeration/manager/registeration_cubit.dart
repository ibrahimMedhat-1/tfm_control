import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/subject_model.dart';

part 'registeration_state.dart';

class RegisterationCubit extends Cubit<RegisterationState> {
  RegisterationCubit() : super(RegisterationInitial());
  static RegisterationCubit get(context) => BlocProvider.of(context);
  List<SubjectModel> availableSubjects = [
    SubjectModel(name: "Network", professor: "Prof", time: "10:00 AM", day: "Monday", code: '8866'),
    SubjectModel(name: "Physics", professor: "Prof", time: "12:00 PM", day: "Tuesday", code: '9897'),
    SubjectModel(name: "Math", professor: "Prof", time: "2:00 PM", day: "Wednesday", code: '98979'),
  ];

  Map<String, List<SubjectModel>> weekSchedule = {
    "Saturday": [],
    "Sunday": [],
    "Monday": [],
    "Tuesday": [],
    "Wednesday": [],
    "Thursday": [],
    "Friday": [],

  };
  List<DataRow> createRowsForSchedule() {
    int maxSubjects = weekSchedule.values.fold(0, (max, list) => max > list.length ? max : list.length);
    List<DataRow> rows = [];
    for (int i = 0; i < maxSubjects; i++) {
      List<DataCell> cells = [];

      weekSchedule.forEach((day, subjects) {
        if (i < subjects.length) {
          var subject = subjects[i];
          cells.add(DataCell(Text('${subject.name}\n${subject.time}')));
        } else {
          cells.add(const DataCell(Text('')));
        }
      });

      rows.add(DataRow(cells: cells));
    }

    return rows;
  }
  void addSubject(int index){
    String? day = availableSubjects[index].day;
    weekSchedule[day]?.add(availableSubjects[index]);
    availableSubjects.removeAt(index);
    emit(AddSubject());
  }



}
