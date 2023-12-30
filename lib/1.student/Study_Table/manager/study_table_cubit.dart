import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/subject_model.dart';

part 'study_table_state.dart';

class StudyTableCubit extends Cubit<StudyTableState> {
  StudyTableCubit() : super(StudyTableInitial());
  static StudyTableCubit get(context) => BlocProvider.of(context);
  final Map<String, List<SubjectModel>> weekSchedule = {
    "Saturday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "sunday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Monday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Tuesday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Wednesday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Thursday": [
      SubjectModel(name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
  };

}
