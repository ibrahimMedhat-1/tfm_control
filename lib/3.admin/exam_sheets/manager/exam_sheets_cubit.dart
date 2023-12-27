import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'exam_sheets_state.dart';

class ExamSheetsCubit extends Cubit<ExamSheetsState> {
  ExamSheetsCubit() : super(ExamSheetsInitial());

  static ExamSheetsCubit get(context) => BlocProvider.of(context);
  String? majorsButtonValue;
  bool firstTermSelected = true;
  bool secondTermSelected = false;

  void firstTermSelection() {
    firstTermSelected = true;
    secondTermSelected = false;
    emit(ChangeTermSelectionValue());
  }

  void secondTermSelection() {
    firstTermSelected = false;
    secondTermSelected = true;
    emit(ChangeTermSelectionValue());
  }

  void changeMajorsButtonValue(String value) {
    majorsButtonValue = value;
    emit(ChangeMajorsButtonValue());
  }
}
