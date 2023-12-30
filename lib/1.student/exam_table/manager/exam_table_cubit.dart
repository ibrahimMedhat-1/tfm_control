import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/exam_model.dart';

part 'exam_table_state.dart';

class ExamTableCubit extends Cubit<ExamTableState> {
  ExamTableCubit() : super(ExamTableInitial());
  static ExamTableCubit get(context) => BlocProvider.of(context);
  final List<ExamModel> data = [
    ExamModel(
      day: 'Monday',
      subjectName: 'Mathematics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',
      seatNumber: '543',
      committee: 'Committee A',
    ),
    ExamModel(
      day: 'tuesday',
      subjectName: 'Network',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',
      seatNumber: '43',
      committee: 'Committee B',
    ),
    ExamModel(
      day: 'sunday',
      subjectName: 'Physics',
      place: 'Room 101',
      time: '9:00 AM - 11:00 AM',
      seatNumber: '543',
      committee: 'Committee C',
    ),

  ];


}
