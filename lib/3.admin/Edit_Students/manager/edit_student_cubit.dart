import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'edit_student_state.dart';

class EditStudentCubit extends Cubit<EditStudentState> {
  EditStudentCubit() : super(EditStudentInitial());
  static EditStudentCubit get(context) => BlocProvider.of(context);
  TextEditingController dobController = TextEditingController();
  TextEditingController editCityController = TextEditingController();
  TextEditingController editPhoneController = TextEditingController();
  TextEditingController editAddressController = TextEditingController();
  TextEditingController editNameController = TextEditingController();
  TextEditingController editIDController = TextEditingController();
  TextEditingController editEmailController = TextEditingController();
  TextEditingController editPasswordController = TextEditingController();
  TextEditingController editBirthPlaceController = TextEditingController();
  TextEditingController editNationalIdController = TextEditingController();

  List<String> countries = ["Country 1", "Country 2", "Country 3"];
  List<String> genders = ["Male", "Female",];
  List<String> religions = ["Religion 1", "Religion 2", "Religion 3"];
  String? selectedCountry;
  String? selectedGender;

  String? selectedReligion;
  late String newValue;
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

}
