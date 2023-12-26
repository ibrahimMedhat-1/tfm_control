part of 'edit_student_cubit.dart';

@immutable
abstract class EditStudentState {}

class EditStudentInitial extends EditStudentState {}
class SelectCountry extends EditStudentState {}
class SelectReligion extends EditStudentState {}
class SelectGender extends EditStudentState {}
class PickDate extends EditStudentState {}
