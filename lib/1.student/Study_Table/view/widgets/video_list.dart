import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';

Widget videoList(BuildContext context) {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text("Video ${index + 1}"),
          leading: const Icon(Icons.play_circle_outline),
          trailing: const Icon(Icons.download,color: ColorsAsset.kPrimary,),
        ),
      );
    },
  );
}