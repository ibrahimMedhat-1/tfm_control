import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/basic_data/manager/basic_data_cubit.dart';

import '../../../../utils/styles/colors.dart';

class PreviousCertificateSection extends StatelessWidget {
  const PreviousCertificateSection({super.key, required this.cubit});
  final BasicDataCubit cubit;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          title: Text("Previous Certificate"),
          tileColor: ColorsAsset.klightblue,
          leading: Icon(
            Icons.star_rate_outlined, color: ColorsAsset.kPrimary,),
        ),
        DataTable(
          border: const TableBorder(
            horizontalInside: BorderSide(
                color: ColorsAsset.klightblue),
            verticalInside: BorderSide(color: ColorsAsset.kMedium),
          ),
          columns: const [
            DataColumn(label: Text('School')),
            DataColumn(label: Text('Certificate name')),
            DataColumn(label: Text('Graduation year')),
            DataColumn(label: Text('graduation Level')),
            DataColumn(label: Text('total Grades')),
            DataColumn(label: Text('Seat No.')),
          ],
          rows: cubit.previousCertificate.map((item) {
            return DataRow(cells: [
              DataCell(Text(item["School"] ?? '')),
              DataCell(Text(item["Certificate name"] ?? '')),
              DataCell(Text(item["Graduation year"] ?? '')),
              DataCell(Text(item["graduation Level"] ?? '')),
              DataCell(Text(item["total Grades"] ?? '')),
              DataCell(Text(item["Seat No."] ?? '')),
            ]);
          }).toList(),
        ),
      ],
    );
  }
}
