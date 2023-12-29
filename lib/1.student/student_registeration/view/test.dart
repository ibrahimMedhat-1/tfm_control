//
// class StudentRegisterationView extends StatefulWidget {
//   @override
//   _StudentRegisterationViewState createState() => _StudentRegisterationViewState();
// }
//
// class _StudentRegisterationViewState extends State<StudentRegisterationView> {
//   List<Subject> availableSubjects = [
//     Subject(name: "Network", professor: "Prof", time: "10:00 AM,wednesday"),
//     Subject(name: "Physics", professor: "Prof", time: "12:00 PM,sunday"),
//     Subject(name: "Network", professor: "Prof", time: "10:00 AM,wednesday"),
//     Subject(name: "Physics", professor: "Prof", time: "12:00 PM,sunday"),
//     Subject(name: "Network", professor: "Prof", time: "10:00 AM,wednesday"),
//     Subject(name: "Physics", professor: "Prof", time: "12:00 PM,sunday"),
//   ];
//
//   List<Subject> addedSubjects = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Subject Scheduler"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: createTable(availableSubjects, true),
//           ),
//           Divider(),
//           Expanded(
//             child: createTable(addedSubjects, false),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget createTable(List<Subject> subjects, bool isAvailable) {
//     return ListView.builder(
//       itemCount: subjects.length,
//       itemBuilder: (context, index) {
//         return Card(
//           child: ListTile(
//             tileColor: ColorsAsset.klightblue,
//             title: Text(subjects[index].name),
//             subtitle: Text("Professor: ${subjects[index].professor},"
//                 " Time: ${subjects[index].time}"),
//             trailing: isAvailable
//                 ? IconButton(
//               icon: Icon(Icons.add),
//               onPressed: () {
//                 setState(() {
//                   addedSubjects.add(subjects[index]);
//                   availableSubjects.removeAt(index);
//                 });
//               },
//             )
//                 : null,
//           ),
//         );
//       },
//     );
//   }
// }
// class Subject {
//   String name;
//   String professor;
//   String time;
//
//   Subject({required this.name, required this.professor, required this.time});
// }
//
