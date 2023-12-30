import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import 'widgets/upload_pdf.dart';
import 'widgets/upload_video.dart';

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
            UploadPDF(),
            const SizedBox(width:30 ,),
            UploadVideo(),
          ],
        ),
      ),
    );
  }
}
