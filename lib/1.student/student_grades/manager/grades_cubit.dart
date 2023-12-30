import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/subject_model.dart';

part 'grades_state.dart';

class GradesCubit extends Cubit<GradesState> {
  GradesCubit() : super(GradesInitial());
  static GradesCubit get(context) => BlocProvider.of(context);
  List<SubjectModel> subjects = [
    SubjectModel(name: 'Mathematics', code: '5458893', grade: 3.5),
    SubjectModel(name: 'English', code: '53454', grade: 4.0),
    SubjectModel(name: 'Physics', code: '53453', grade: 3.7),
  ];

  double calculateSemesterGPA() {
    double totalGradePoints =
    subjects.fold(0, (sum, subject) => sum + subject.grade!.toDouble());
    double totalCredits = subjects.length.toDouble();
    return totalGradePoints / totalCredits;
  }

  double calculateTotalGPA() {
    double totalGradePoints =
    subjects.fold(0, (sum, subject) => sum + subject.grade!.toDouble());
    double totalCredits = subjects.length.toDouble();
    return totalGradePoints / totalCredits;
  }

}
