class SubjectModel {
  final String name;
  final bool? isCompleted;
  final String? code;
  final String? creditHours;
  final double? grade;
  final String? professor;
  final String? time;
  final String? day;
  final String? place;
  final String? major;

  SubjectModel(
      {required this.name,
      this.isCompleted,
      this.code,
      this.creditHours,
      this.grade,
      this.day,
      this.professor,
      this.time,
      this.place, this.major});
}
