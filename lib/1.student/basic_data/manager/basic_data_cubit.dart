import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'basic_data_state.dart';

class BasicDataCubit extends Cubit<BasicDataState> {
  BasicDataCubit() : super(BasicDataInitial());
  static BasicDataCubit get(context) => BlocProvider.of(context);
  final List<Map<String, dynamic>>familyData  = [
    {
      "Name": "Parent Name",
      "Job": "123",
      "city": "cairo,Egypt",
      "Address": "maadi",
      "Email": "dsfs@gmail.com",
      "Phone No.": "1324343242",
    },
  ];
  final List<Map<String, dynamic>>contactData  = [
    {
      "city": "cairo,Egypt",
      "Address": "maadi",
      "Email": "dsfs@gmail.com",
      "Phone No.": "1324343242",
    },
  ];
  final List<Map<String, dynamic>> PersonalData = [
    {
      "Name": "Student Name",
      "ID": "123",
      "National ID": "NID12345",
      "Address": "maadi",
      "Religion": "muslim",
      "Gender": "female",
      "Date of Birth": "20/12/2000",
    },
  ];
  final List<Map<String, dynamic>> previousCertificate = [
    {
      "School": "elhelal el ahmar",
      "Certificate name": "123",
      "Graduation year": "2020",
      "graduation Level": "313",
      "total Grades": "muslim",
      "Seat No.": "female",
    },
  ];
}
