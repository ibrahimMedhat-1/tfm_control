class ExamModel {
  final String day;
  final String subjectName;
  final String place;
  final String time;
  final String? seatNumber;
  final String? committee;

  ExamModel({
    required this.day,
    required this.subjectName,
    required this.place,
    required this.time,
     this.seatNumber,
     this.committee,
  });
}
