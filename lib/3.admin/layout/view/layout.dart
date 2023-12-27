import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/layout/view/row_list_model.dart';

import '../../../utils/styles/colors.dart';
import '../../Students/view/students_view.dart';

class AdminLayout extends StatefulWidget {
  const AdminLayout({Key? key}) : super(key: key);

  @override
  AdminLayoutState createState() => AdminLayoutState();
}

class AdminLayoutState extends State<AdminLayout> {
  Widget selectedWidget = const StudentsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: MediaQuery.of(context).size.height * 0.18,
                  ),
                ),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: RowListModel.rowList.length,
                    itemBuilder: (context, index) {
                      var item = RowListModel.rowList[index];
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
            flex: 7,
            child: selectedWidget,
          ),
        ],
      ),
    );
  }

  void updateSelectedWidget(int index) {
    setState(() {
      for (var element in RowListModel.rowList) {
        element.isSelected = false;
      }
      RowListModel.rowList[index].isSelected = true;
      selectedWidget = RowListModel.rowList[index].widgetBuilder();
    });
  }
}
