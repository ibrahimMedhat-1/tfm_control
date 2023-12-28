import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

part 'students_state.dart';

class StudentsCubit extends Cubit<StudentsState> {
  StudentsCubit() : super(StudentsInitial());
  static StudentsCubit get(context) => BlocProvider.of(context);
   TextEditingController nameController = TextEditingController();
   TextEditingController dobController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController birthPlaceController = TextEditingController();
  TextEditingController nationalIDController = TextEditingController();
  TextEditingController parentNameController = TextEditingController();
  TextEditingController parentJobController = TextEditingController();
  TextEditingController parentcityController = TextEditingController();
  TextEditingController parentEmailController = TextEditingController();
  TextEditingController parentPhoneController = TextEditingController();
  TextEditingController parentAddressController = TextEditingController();
  TextEditingController studentAddressController = TextEditingController();
  TextEditingController studentCityController = TextEditingController();
  TextEditingController studentPhoneController = TextEditingController();
  TextEditingController studentEmailController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController certificateNameController = TextEditingController();
  TextEditingController graduationYearController = TextEditingController();
  List<String> countries = ["Country 1", "Country 2", "Country 3"];
  List<String> genders = ["Male", "Female",];
  List<String> religions = ["Religion 1", "Religion 2", "Religion 3"];
  String? selectedCountry;
  String? selectedGender;

  String? selectedReligion;
  late String newValue;

  DateTime selectedDate = DateTime.now();


  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {

        selectedDate = picked;
        dobController.text = DateFormat('yyyy-MM-dd').format(picked);
        emit(PickDate());

    }
  }
  void setSelectCountry(String newValue) {
    selectedCountry = newValue;
    emit(SelectCountry());
  }
  void setSelectReligion(String newValue) {
    selectedReligion = newValue;
    emit(SelectReligion());
  }
  void setSelectGender(String newValue) {
    selectedGender = newValue;
    emit(SelectGender());
  }

  final List<Map<String, dynamic>> data = [
    {"id": 1, "name": "Student Name"},
    {"id": 2, "name": "Student Name"},
    {"id": 1, "name": "Student Name"},
    {"id": 2, "name": "Student Name"},
    {"id": 1, "name": "Student Name"},
    {"id": 2, "name": "Student Name"},
    {"id": 1, "name": "Student Name"},
    {"id": 2, "name": "Student Name"},
    {"id": 1, "name": "Student Name"},
    {"id": 2, "name": "Student Name"},
    {"id": 1, "name": "Student Name"},
    {"id": 2, "name": "Student Name"},
    {"id": 1, "name": "Student Name"},
    {"id": 2, "name": "Student Name"},
    // Add more data here
  ];
}
