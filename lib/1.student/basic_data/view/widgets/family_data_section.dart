import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';
import '../../manager/basic_data_cubit.dart';

class FamilyDataSection extends StatelessWidget {
  const FamilyDataSection({super.key, required this.cubit});
  final BasicDataCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          title: Text("Family Member Data"),
          tileColor: ColorsAsset.klightblue,
          leading: Icon(
            Icons.family_restroom, color: ColorsAsset.kPrimary,),
        ),
        DataTable(
          border: const TableBorder(
            horizontalInside: BorderSide(
                color: ColorsAsset.klightblue),
            verticalInside: BorderSide(color: ColorsAsset.kMedium),
          ),
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Job')),
            DataColumn(label: Text('city')),
            DataColumn(label: Text('Address')),
            DataColumn(label: Text('Email')),
            DataColumn(label: Text('Phone No.')),
          ],
          rows: cubit.familyData.map((item) {
            return DataRow(cells: [
              DataCell(Text(item["Name"] ?? '')),
              DataCell(Text(item["Job"] ?? '')),
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
