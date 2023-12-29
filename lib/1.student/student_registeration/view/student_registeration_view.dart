import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class StudentRegisterationView extends StatefulWidget {
  const StudentRegisterationView({super.key});

  @override
  _StudentRegisterationViewState createState() => _StudentRegisterationViewState();
}

class _StudentRegisterationViewState extends State<StudentRegisterationView> {
  List<SubjectModel> availableSubjects = [
    SubjectModel(name: "Network", professor: "Prof", time: "10:00 AM", day: "Monday"),
    SubjectModel(name: "Physics", professor: "Prof", time: "12:00 PM", day: "Tuesday"),
    SubjectModel(name: "Math", professor: "Prof", time: "2:00 PM", day: "Wednesday"),
  ];

  Map<String, List<SubjectModel>> weekSchedule = {
    "Saturday": [],
    "Sunday": [],
    "Monday": [],
    "Tuesday": [],
    "Wednesday": [],
    "Thursday": [],
    "Friday": [],

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subject Scheduler"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: createSubjectList(),
          ),
          const Divider(),
          Expanded(
            child: createWeekScheduleTable(),
          )
        ],
      ),
    );
  }

  Widget createSubjectList() {
    return ListView.builder(
      itemCount: availableSubjects.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            tileColor: ColorsAsset.klightblue,
            title: Text(availableSubjects[index].name),
            subtitle: Text("Professor: ${availableSubjects[index].professor}, Time: ${availableSubjects[index].time}"),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsAsset.kPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                ),
              ),
              child: const Text('Add',style: TextStyle(color: Colors.white),),
              onPressed: () {
                setState(() {
                  String day = availableSubjects[index].day;
                  weekSchedule[day]?.add(availableSubjects[index]);
                  availableSubjects.removeAt(index);
                });
              },
            ),
          ),
        );
      },
    );
  }

  Widget createWeekScheduleTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: weekSchedule.keys.map((day) => DataColumn(label: Text(day))).toList(),
        rows: createRowsForSchedule(),
      ),
    );
  }

  List<DataRow> createRowsForSchedule() {
    int maxSubjects = weekSchedule.values.fold(0, (max, list) => max > list.length ? max : list.length);
    List<DataRow> rows = [];
    for (int i = 0; i < maxSubjects; i++) {
      List<DataCell> cells = [];

      weekSchedule.forEach((day, subjects) {
        if (i < subjects.length) {
          var subject = subjects[i];
          cells.add(DataCell(Text('${subject.name}\n${subject.time}')));
        } else {
          cells.add(const DataCell(Text('')));
        }
      });

      rows.add(DataRow(cells: cells));
    }

    return rows;
  }
}
class SubjectModel {
  String name;
  String professor;
  String time;
  String day;

  SubjectModel({required this.name, required this.professor, required this.time, required this.day});
}

