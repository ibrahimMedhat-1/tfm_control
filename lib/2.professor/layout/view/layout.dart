import 'package:flutter/material.dart';
import 'package:tfm_control/2.professor/doctor_schedule/view/doctor_schedule_view.dart';
import 'package:tfm_control/2.professor/layout/view/row_list.dart';

import '../../../utils/styles/colors.dart';


class ProfessorLayout extends StatefulWidget {
  const ProfessorLayout({super.key});

  @override
  State<ProfessorLayout> createState() => _ProfessorLayoutState();
}

class _ProfessorLayoutState extends State<ProfessorLayout> {
  Widget selectedWidget =   const DoctorScheduleView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                      SizedBox(width: 15,),
                      Text("Doctor Name"),

                    ],
                  ),
                ),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: DoctorRowList.rowList.length,
                    itemBuilder: (context, index) {
                      var item = DoctorRowList.rowList[index];
                      return ListTile(
                        selected: item.isSelected,
                        selectedColor: Colors.white,
                        selectedTileColor: ColorsAsset.kPrimary,
                        // autofocus: true,
                        leading: Icon(
                          item.icon,
                          color: ColorsAsset.kLight,
                        ),
                        title: Text(
                          item.title,
                          style: const TextStyle(),
                        ),
                        onTap: () {
                          updateSelectedWidget(index);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const VerticalDivider(),
          Expanded(
            flex: 6,
            child: selectedWidget,
          ),
        ],
      ),
    );
  }
  void updateSelectedWidget(int index) {
    setState(() {
      for (var element in DoctorRowList.rowList) {
        element.isSelected = false;
      }
      DoctorRowList.rowList[index].isSelected = true;
      selectedWidget = DoctorRowList.rowList[index].widgetBuilder();
    });
  }
}
