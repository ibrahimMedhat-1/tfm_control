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

  Widget _selectedWidget = StudentsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          Expanded(
            flex: 2,
            child:  Column(
              children: [
                Container(
                  child: Image.asset('assets/images/logo.png'),
                ),
                Divider(),
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
                          style: TextStyle(
                            color: ColorsAsset.kPrimary,
                          ),
                        ),
                        onTap: (){
                          _updateSelectedWidget(RowListModel.rowList[index].widgetBuilder());
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          VerticalDivider(),
          Expanded(
            flex: 7,
            child: _selectedWidget,
          ),
        ],
      ),
    );
  }

  void _updateSelectedWidget(Widget newWidget) {
    setState(() {
      _selectedWidget = newWidget;
    });
  }
}


