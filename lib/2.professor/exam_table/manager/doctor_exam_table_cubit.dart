import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/exam_model.dart';

part 'doctor_exam_table_state.dart';

class DoctorExamTableCubit extends Cubit<DoctorExamTableState> {
  DoctorExamTableCubit() : super(DoctorExamTableInitial());
  static DoctorExamTableCubit get(context) => BlocProvider.of(context);
  final List<ExamModel> data = [
    ExamModel(
      day: 'Monday',
      subjectName: 'Mathematics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',

    ),
    ExamModel(
      day: 'tuesday',
      subjectName: 'Network',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',

    ),
    ExamModel(
      day: 'sunday',
      subjectName: 'Physics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',

    ),

  ];

}
