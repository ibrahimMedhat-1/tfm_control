import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/layout/view/row_list.dart';

import '../../../utils/styles/colors.dart';
import '../../basic_data/view/basic_data_view.dart';

class StudentLayout extends StatefulWidget {
  const StudentLayout({super.key});

  @override
  State<StudentLayout> createState() => _StudentLayoutState();
}

class _StudentLayoutState extends State<StudentLayout> {
  Widget selectedWidget =  BasicDataView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Image.asset(
                //     'assets/images/logo.png',
                //     height: MediaQuery.of(context).size.height * 0.15,
                //   ),
                // ),
                // const Divider(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          Text("Student Name"),
                          Text("Student Major"),
                        ],
                      ),

                    ],
                  ),
                ),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: StudentRowList.rowList.length,
                    itemBuilder: (context, index) {
                      var item = StudentRowList.rowList[index];
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
      for (var element in StudentRowList.rowList) {
        element.isSelected = false;
      }
      StudentRowList.rowList[index].isSelected = true;
      selectedWidget = StudentRowList.rowList[index].widgetBuilder();
    });
  }
}
