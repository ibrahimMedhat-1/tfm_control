import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/styles/colors.dart';
import '../manager/material_cubit.dart';
import 'widgets/material_grid.dart';

class MaterialView extends StatelessWidget {
  const MaterialView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectsMaterialCubit(),
      child: BlocBuilder<SubjectsMaterialCubit, SubjectsMaterialState>(
        builder: (context, state) {
          SubjectsMaterialCubit cubit = SubjectsMaterialCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'My Subjects',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: ColorsAsset.kPrimary,
            ),
            body: MaterialGrid(
              cubit: cubit,
            ),
          );
        },
      ),
    );
  }
}
