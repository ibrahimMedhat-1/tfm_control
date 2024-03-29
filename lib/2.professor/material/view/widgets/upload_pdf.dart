import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class UploadPDF extends StatelessWidget {
  const UploadPDF({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.3 ,
      decoration: BoxDecoration(
        color: ColorsAsset.klightblue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/icons8-pdf-80 (1).png",height: 100,),
          const Text("Upload PDF"),
        ],
      ),
    );
  }
}
