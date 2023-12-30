import 'package:flutter/material.dart';

import '../../../../utils/styles/colors.dart';

class UploadVideo extends StatelessWidget {
  const UploadVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.3,
      decoration: BoxDecoration(
        color: ColorsAsset.klightblue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/icons8-video-96.png"),
          const Text("Upload Vedio"),
        ],
      ),
    );
  }
}
