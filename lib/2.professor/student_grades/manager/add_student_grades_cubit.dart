import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_student_grades_state.dart';

class AddStudentGradesCubit extends Cubit<AddStudentGradesState> {
  AddStudentGradesCubit() : super(AddStudentGradesInitial());
  static AddStudentGradesCubit get(context) => BlocProvider.of(context);
  Map<String, List<String>> Majors = {
    'Computer Science': ['Level 1', 'Level 2','Level 3','Level 4'],
    'Buissness': ['Level 1', 'Level 2','Level 3','Level 4'],
  };
  String? subject;

  Map<String, bool> isExpanded = {};
  void expanded(){
    Majors.forEach((key, value) {
      isExpanded[key] = false;
    });
  }


}
