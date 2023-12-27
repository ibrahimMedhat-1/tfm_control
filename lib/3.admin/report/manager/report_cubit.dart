import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'report_state.dart';

class ReportCubit extends Cubit<ReportState> {
  ReportCubit() : super(ReportInitial());
  static ReportCubit get(context) => BlocProvider.of(context);
  String? exportButtonValue;
  void changeExportButtonValue(String value) {
    exportButtonValue = value;
    emit(ChangeExportButtonValue());
  }
}
