import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';
import '../../manager/basic_data_cubit.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key, required this.cubit});
  final BasicDataCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          title: Text("Personal Data"),
          tileColor: ColorsAsset.klightblue,
          leading: Icon(Icons.person,color: ColorsAsset.kPrimary,),
        ),
        DataTable(
          border: const TableBorder(
            horizontalInside: BorderSide(color: ColorsAsset.klightblue),
            verticalInside: BorderSide(color: ColorsAsset.kLight),
          ),
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('National ID')),
            DataColumn(label: Text('Address')),
            DataColumn(label: Text('Religion')),
            DataColumn(label: Text('Gender')),
            DataColumn(label: Text('Date of Birth')),
          ],
          rows: cubit.PersonalData.map((item) {
            return DataRow(cells: [
              DataCell(Text(item["Name"] ?? '')),
              DataCell(Text(item["ID"] ?? '')),
              DataCell(Text(item["National ID"] ?? '')),
              DataCell(Text(item["Address"] ?? '')),
              DataCell(Text(item["Religion"] ?? '')),
              DataCell(Text(item["Gender"] ?? '')),
              DataCell(Text(item["Date of Birth"] ?? '')),
            ]);
          }).toList(),
        ),
      ],
    );
  }
}
