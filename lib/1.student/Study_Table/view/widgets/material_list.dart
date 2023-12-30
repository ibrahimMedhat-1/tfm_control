import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';

Widget materialList(BuildContext context) {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text("Network chapter ${index + 1}"),
          leading: Image.asset("assets/images/icons8-pdf-80 (1).png"),
          trailing: const Icon(Icons.download,color: ColorsAsset.kPrimary,),
        ),
      );
    },
  );
}