import 'package:flutter/material.dart';
import 'package:tfm_control/2.professor/material/manager/material_cubit.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '../upload_material_view.dart';

class MaterialGrid extends StatelessWidget {
  const MaterialGrid({super.key, required this.cubit});
  final SubjectsMaterialCubit cubit;

  @override
  Widget build(BuildContext context) {
    int gridCount = MediaQuery.of(context).size.width > 600 ? 6 : 4;

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: cubit.subjects.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const UploadMaterialView()));
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorsAsset.klightblue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cubit.subjects[index],
                  style: const TextStyle(
                    color: ColorsAsset.kPrimary,
                    fontSize: 20,
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
