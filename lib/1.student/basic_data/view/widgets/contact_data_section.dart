import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';
import '../../manager/basic_data_cubit.dart';

class ContactDataSEction extends StatelessWidget {
  const ContactDataSEction({super.key, required this.cubit});
  final BasicDataCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          title: Text("Contact Data"),
          tileColor: ColorsAsset.klightblue,
          leading: Icon(Icons.phone, color: ColorsAsset.kPrimary,),
        ),
        DataTable(
          border: const TableBorder(
            horizontalInside: BorderSide(
                color: ColorsAsset.klightblue),
            verticalInside: BorderSide(color: ColorsAsset.kMedium),
          ),
          columns: const [
            DataColumn(label: Text('city')),
            DataColumn(label: Text('Address')),
            DataColumn(label: Text('Email')),
            DataColumn(label: Text('Phone No.')),
          ],
          rows: cubit.contactData.map((item) {
            return DataRow(cells: [
              DataCell(Text(item["city"] ?? '')),
              DataCell(Text(item["Address"] ?? '')),
              DataCell(Text(item["Email"] ?? '')),
              DataCell(Text(item["Phone No."] ?? '')),
            ]);
          }).toList(),
        ),
      ],
    );
  }
}
