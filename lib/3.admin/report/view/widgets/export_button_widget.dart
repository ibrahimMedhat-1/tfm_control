import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/report/manager/report_cubit.dart';

import '../../../../utils/styles/colors.dart';

class ExportButton extends StatelessWidget {
  const ExportButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportCubit(),
      child: BlocConsumer<ReportCubit, ReportState>(
        listener: (context, state) {},
        builder: (context, state) {
          ReportCubit cubit = ReportCubit.get(context);
          return DropdownButtonFormField<String>(
            value: cubit.exportButtonValue,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorsAsset.kPrimary),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorsAsset.kPrimary),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorsAsset.kPrimary),
              ),
              labelText: 'Export',
            ),
            items: const [
              DropdownMenuItem(value: 'PDF', child: Text('PDF')),
              DropdownMenuItem(value: 'PNG', child: Text('PNG')),
            ],
            onChanged: (value) {
              cubit.changeExportButtonValue(value!);
            },
          );
        },
      ),
    );
  }
}
