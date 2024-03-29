import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/majors/view/widgets/floating_action_button.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import 'major_details.dart';

class MajorsView extends StatelessWidget {
   MajorsView({super.key});
  final List<String> majors = [
    'Computer Science',
    'Mechanical Engineering',
    'Electrical Engineering',
    'Psychology',
    'Business Administration',
    'Biology',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsAsset.kPrimary,
        title: const Text('University Majors',style: TextStyle(
          color: Colors.white,

        ),),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: majors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                tileColor:  ColorsAsset.klightblue,
                leading: const Icon(Icons.school,color: ColorsAsset.kMedium,),
                title: Text(majors[index]),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MajorDetails(),));

                },
                trailing: const Icon(Icons.arrow_forward_ios_outlined,color: ColorsAsset.kPrimary,),
              ),
            );
          },
        ),
      ),
      floatingActionButton: const FloatingButton(),
    );
  }
}

