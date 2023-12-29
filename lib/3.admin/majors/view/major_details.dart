import 'package:flutter/material.dart';

import '../../../utils/styles/colors.dart';
class MajorDetails extends StatelessWidget {
  const MajorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> subjects = ["Math", "Physics", "Network"];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ColorsAsset.kPrimary,
        title: const Text(
          'Major Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Major Name : ",
                  style: TextStyle(
                    color: ColorsAsset.kPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                  ),
                ),
                Text(
                  "Computer Science",
                  style: TextStyle(
                    color: ColorsAsset.kPrimary,
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: ColorsAsset.klightblue,
              title: Text("First Semester",style: TextStyle(color: ColorsAsset.kPrimary,fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: ColorsAsset.kPrimary,),
                    title: Text(subjects[index]),
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => SubjectViewPage(subject: subjects[index]),
                      // ));
                    },
                  );
                },
              ),
            ),
            ListTile(
              tileColor: ColorsAsset.klightblue,
              title: Text("Second Semester",style: TextStyle(color: ColorsAsset.kPrimary,fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: ColorsAsset.kPrimary,),
                    title: Text(subjects[index]),
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => SubjectViewPage(subject: subjects[index]),
                      // ));
                    },
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}