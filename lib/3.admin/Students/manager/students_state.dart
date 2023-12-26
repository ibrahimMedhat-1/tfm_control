part of 'students_cubit.dart';

@immutable
abstract class StudentsState {}

class StudentsInitial extends StudentsState {}
class PickDate extends StudentsState {}
class SelectCountry extends StudentsState {}
class SelectReligion extends StudentsState {}
class SelectGender extends StudentsState {}
