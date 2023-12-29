import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class Subject {
  final String name;
  final String code;
  final double grade;

  Subject({
    required this.name,
    required this.code,
    required this.grade,
  });
}
class TermSubjectsPage extends StatefulWidget {
  const TermSubjectsPage({super.key});

  @override
  _TermSubjectsPageState createState() => _TermSubjectsPageState();
}

class _TermSubjectsPageState extends State<TermSubjectsPage> {
  List<Subject> subjects = [
    Subject(name: 'Mathematics', code: '5458893', grade: 3.5),
    Subject(name: 'English', code: '53454', grade: 4.0),
    Subject(name: 'Physics', code: '53453', grade: 3.7),
  ];

  double calculateSemesterGPA() {
    double totalGradePoints = subjects.fold(0, (sum, subject) => sum + subject.grade);
    double totalCredits = subjects.length.toDouble();
    return totalGradePoints / totalCredits;
  }

  double calculateTotalGPA() {
    double totalGradePoints = subjects.fold(0, (sum, subject) => sum + subject.grade);
    double totalCredits = subjects.length.toDouble();
    return totalGradePoints / totalCredits;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Term Subjects and Grades',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: ColorsAsset.kPrimary
              ),
            ),
            const SizedBox(height: 16.0),
            DataTable(
              border: const TableBorder(
                top: BorderSide(color: ColorsAsset.kPrimary),
                bottom: BorderSide(color: ColorsAsset.kPrimary),
                right: BorderSide(color:  ColorsAsset.kPrimary),
                left: BorderSide(color:  ColorsAsset.kPrimary),
                verticalInside: BorderSide(color:  ColorsAsset.kPrimary),

              ),
              columns: const [
                DataColumn(label: Text('Subject')),
                DataColumn(label: Text('Code')),
                DataColumn(label: Text('Grade')),
              ],
              rows: subjects
                  .map(
                    (subject) => DataRow(
                  cells: [
                    DataCell(Text(subject.name)),
                    DataCell(Text(subject.code)),
                    DataCell(Text(subject.grade.toStringAsFixed(1))),
                  ],
                ),
              )
                  .toList(),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Semester GPA: ${calculateSemesterGPA().toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Total GPA: ${calculateTotalGPA().toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}