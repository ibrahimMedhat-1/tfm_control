import 'package:flutter/material.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '2.professor/layout/view/layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TFM control',
      theme: ThemeData(
        expansionTileTheme: const ExpansionTileThemeData(
          backgroundColor: ColorsAsset.klightblue
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfessorLayout(),
    );
  }
}
