import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class UploadMaterialView extends StatelessWidget {
  const UploadMaterialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Upload Material',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
            ),
            const SizedBox(width:30 ,),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
