import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/layout/view/row_list_model.dart';

import '../../../utils/styles/colors.dart';
import '../../Students/view/students_view.dart';

class AdminLayout extends StatefulWidget {
  const AdminLayout({Key? key}) : super(key: key);

  @override
  _AdminLayoutState createState() => _AdminLayoutState();
}

class _AdminLayoutState extends State<AdminLayout> {

  Widget selectedWidget =  const StudentsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          Expanded(
            flex: 2,
            child:  Column(
              children: [
                Image.asset('assets/images/logo.png'),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: RowListModel.rowList.length,
                    itemBuilder: (context, index) {
                      var item = RowListModel.rowList[index];
                      return ListTile(
                        leading: Icon(
                          item.icon,
                          color: ColorsAsset.kLight,
                        ),
                        title: Text(
                          item.title,
                          style: const TextStyle(
                            color: ColorsAsset.kPrimary,
                          ),
                        ),
                        onTap: (){
                          updateSelectedWidget(RowListModel.rowList[index].widgetBuilder());
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

  void updateSelectedWidget(Widget newWidget) {
    setState(() {
      selectedWidget = newWidget;
    });
  }
}


