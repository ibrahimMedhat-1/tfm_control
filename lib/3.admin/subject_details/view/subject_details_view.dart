import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class SubjectDetailsView extends StatefulWidget {
  const SubjectDetailsView({super.key});

  @override
  State<SubjectDetailsView> createState() => _SubjectDetailsViewState();
}

class _SubjectDetailsViewState extends State<SubjectDetailsView> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String? formattedDate;
  String? formattedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsAsset.kPrimary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Subject Details",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Subject Name : ",style: TextStyle(
                    color: ColorsAsset.kPrimary, fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.02
                ),),
                Text(" Math",style: TextStyle(
                    color: ColorsAsset.kPrimary,fontSize: MediaQuery.of(context).size.width*0.02
                ),),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsAsset.kPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                  child: const Text('Add Exam Time',style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    selectDateTime(context);
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text("Subject Code : ",style: TextStyle(
                    color: ColorsAsset.kPrimary, fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.02
                ),),
                Text(" 423434235",style: TextStyle(
                    color: ColorsAsset.kPrimary,fontSize: MediaQuery.of(context).size.width*0.02
                ),),
              ],
            ),
            Row(
              children: [
                Text("Exam Time : ",style: TextStyle(
                    color: ColorsAsset.kPrimary, fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.02
                ),),
                formattedDate != null && formattedTime != null?
                  Text('Selected Date: $formattedDate\nSelected Time: $formattedTime',style: TextStyle(
                      color: ColorsAsset.kPrimary,fontSize: MediaQuery.of(context).size.width*0.02
                  ),):
                const SizedBox(),
              ],
            ),
            const SizedBox(height: 10,),

            Center(
              child: Text("This Subject is available in these Majors",style: TextStyle(
                 fontSize: MediaQuery.of(context).size.width*0.02
              ),),
            ),
            const SizedBox(height: 10,),

            const ExpansionTile(
                title:Text("Computer Science"),expandedCrossAxisAlignment: CrossAxisAlignment.start,children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Term : first")),
                        Align( alignment: Alignment.topLeft,
                            child: Text("by Prof : Prof")),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("in : room 31 at monday 12:00 Pm")),
                      ],
                    ),
                  ),


            ]
            ),
            const SizedBox(height: 10,),
            const ExpansionTile(
                title:Text("Computer Science"),expandedCrossAxisAlignment: CrossAxisAlignment.start,children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Term : first")),
                    Align( alignment: Alignment.topLeft,
                        child: Text("by Prof : Prof")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("in : room 31 at monday 12:00 Pm")),
                  ],
                ),
              ),


            ]
            ),
            const SizedBox(height: 10,),
            const ExpansionTile(
                title:Text("Computer Science"),expandedCrossAxisAlignment: CrossAxisAlignment.start,children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Term : first")),
                    Align( alignment: Alignment.topLeft,
                        child: Text("by Prof : Prof")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("in : room 31 at monday 12:00 Pm")),
                  ],
                ),
              ),


            ]
            ),
            const SizedBox(height: 10,),
            const ExpansionTile(
                title:Text("Computer Science"),expandedCrossAxisAlignment: CrossAxisAlignment.start,children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Term : first")),
                    Align( alignment: Alignment.topLeft,
                        child: Text("by Prof : Prof")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("in : room 31 at monday 12:00 Pm")),
                  ],
                ),
              ),


            ]
            ),
          ],
        ),
      ),
    );
  }
  Future<void> selectDateTime(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );

    if (date != null) {
      final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: selectedTime ?? TimeOfDay.now(),
      );

      if (time != null) {
        setState(() {
          selectedDate = date;
          selectedTime = time;
          formattedDate = DateFormat('yyyy-MM-dd').format(date);
          formattedTime = formatTimeOfDay(time);
        });
      }
    }
  }

  String formatTimeOfDay(TimeOfDay tod) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }
}
