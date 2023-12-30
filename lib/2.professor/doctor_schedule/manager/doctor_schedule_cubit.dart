import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/subject_model.dart';

part 'doctor_schedule_state.dart';

class DoctorScheduleCubit extends Cubit<DoctorScheduleState> {
  DoctorScheduleCubit() : super(DoctorScheduleInitial());
  static DoctorScheduleCubit get(context) => BlocProvider.of(context);
  final Map<String, List<SubjectModel>> weekSchedule = {
    "Saturday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "sunday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Monday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Tuesday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Wednesday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
    "Thursday": [
      SubjectModel(major: "computer Science",name: "Math", time: "9:00 - 10:00", place: "Room 101"),
      SubjectModel(major: "computer Science",name: "Physics", time: "10:30 - 11:30", place: "Room 102"),
    ],
  };

}
