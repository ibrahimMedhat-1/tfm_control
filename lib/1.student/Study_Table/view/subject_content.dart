import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class SubjectContentView extends StatelessWidget {
  const SubjectContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Subject Content',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),
      body: Column(
        children: [
          const ListTile(
            tileColor: ColorsAsset.klightblue,
            title:Text("Subject Materials", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)) ,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: materialList(context),
            ),
          ),
          const Divider(),
          const ListTile(
            tileColor: ColorsAsset.klightblue,
            title:Text("Subject Videos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)) ,
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: videoList(context),
            ),
          ),
        ],
      ),
    );
  }

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
}
