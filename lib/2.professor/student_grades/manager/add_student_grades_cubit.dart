import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_student_grades_state.dart';

class AddStudentGradesCubit extends Cubit<AddStudentGradesState> {
  AddStudentGradesCubit() : super(AddStudentGradesInitial());
  static AddStudentGradesCubit get(context) => BlocProvider.of(context);
  Map<String, List<String>> subjects = {
    'Math': ['Student1', 'student2', 'student3'],
    'Science': ['Student1', 'student2', 'student3'],
  };
  String? subject;

  Map<String, bool> isExpanded = {};
  void expanded(){
    subjects.forEach((key, value) {
      isExpanded[key] = false;
    });
  }


}
