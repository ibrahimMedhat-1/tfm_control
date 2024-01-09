import 'package:flutter_bloc/flutter_bloc.dart';

part 'material_state.dart';

class SubjectsMaterialCubit extends Cubit<SubjectsMaterialState> {
  SubjectsMaterialCubit() : super(MaterialInitial());
  static SubjectsMaterialCubit get(context) => BlocProvider.of(context);
  final List<String> subjects = [
    "English",
    "Network",
    "MAth",
    "Science",
    "History",
    "Geography",
    "Art"
  ];

}
