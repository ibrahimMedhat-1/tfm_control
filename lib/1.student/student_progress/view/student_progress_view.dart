import 'package:flutter/material.dart';

import '../../../utils/styles/colors.dart';

class StudentProgressView extends StatelessWidget {
   StudentProgressView({super.key});
  List<Subject> subjects = [
    Subject(name: 'Mathematics', isCompleted: true,code: "534545534",creditHours: "3"),
    Subject(name: 'Physics', isCompleted: false,code: "53454553",creditHours: "2"),
    Subject(name: 'Chemistry', isCompleted: true,code: "9879877892",creditHours: "6"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Progress"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text("Student Name"),
                  SizedBox(width: 20,),
                  Text("Student Code"),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text("Student Major"),
                  SizedBox(width: 20,),
                  Text("Level One"),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: DataTable(
                      border: const TableBorder(
                        top: BorderSide(color: ColorsAsset.kPrimary),
                        bottom: BorderSide(color: ColorsAsset.kPrimary),
                        right: BorderSide(color:  ColorsAsset.kPrimary),
                        left: BorderSide(color:  ColorsAsset.kPrimary),
                    
                      ),
                      columns: const [
                        DataColumn(label: Text('Subject')),
                        DataColumn(label: Text('Code')),
                        DataColumn(label: Text('Credit Hours')),
                        DataColumn(label: Text('Progress')),
                      ],
                      rows: subjects.map((subject) {
                        return DataRow(cells: [
                          DataCell(Text(subject.name)),
                          DataCell(Text(subject.code)),
                          DataCell(Text(subject.creditHours)),
                          DataCell(Icon(
                              subject.isCompleted ? Icons.check : Icons.close,
                              color: subject.isCompleted ? Colors.green : Colors.red,
                            ),),
                    
                        ]);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
class Subject {
  final String name;
  final bool isCompleted;
  final String code;
  final String creditHours;

  Subject({
    required this.name,
    required this.isCompleted,
    required this.code,
    required this.creditHours,
  });
}
