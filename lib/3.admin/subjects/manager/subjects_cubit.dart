import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'subjects_state.dart';

class SubjectsCubit extends Cubit<SubjectsState> {
  SubjectsCubit() : super(SubjectsInitial());
  static SubjectsCubit get(context) => BlocProvider.of(context);
  List<String> places = ["place 1", "place 2", "place 3"];
  List<String> years = ["1st", "2nd","3rd","4th","5th"];
  List<String> term = ["first", "second"];
  List<String> days = ["sunday", "monday","tuesday"];
  List<String> type = ["Section", "Lecture"];
  List<String> major = ["computer Scince","computer dffScince"];
  String? selectedPlace;
  String? selectedYear;
  String? selectedTerm;
  String? selectedday;
  String? selectedType;
  String? selectedMajor;
  void setSelectPlace(String newValue) {
    selectedPlace = newValue;
    emit(SelectPlace());
  }
  void setSelectyear(String newValue) {
    selectedYear = newValue;
    emit(SelectYear());
  }
  void setSelectTerm(String newValue) {
    selectedTerm = newValue;
    emit(SelectTerm());
  }
  void setSelectMAjor(String newValue) {
    selectedMajor = newValue;
    emit(SelectMAjor());
  }
  void setSelectType(String newValue) {
    selectedType = newValue;
    emit(SelectType());
  }
  void setSelectDAy(String newValue) {
    selectedday = newValue;
    emit(SelectDay());
  }

}
