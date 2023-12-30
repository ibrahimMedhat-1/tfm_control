import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/subject_model.dart';

part 'progress_state.dart';

class ProgressCubit extends Cubit<ProgressState> {
  ProgressCubit() : super(ProgressInitial());
  static ProgressCubit get(context) => BlocProvider.of(context);
  List<SubjectModel> subjects = [
    SubjectModel(name: 'Mathematics', isCompleted: true,code: "534545534",creditHours: "3"),
    SubjectModel(name: 'Physics', isCompleted: false,code: "53454553",creditHours: "2"),
    SubjectModel(name: 'Chemistry', isCompleted: true,code: "9879877892",creditHours: "6"),
  ];

}
