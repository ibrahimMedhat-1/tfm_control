import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tfm_control/1.student/layout/view/layout.dart';
import 'package:tfm_control/2.professor/layout/view/layout.dart';
import 'package:tfm_control/3.admin/layout/view/layout.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        expansionTileTheme: const ExpansionTileThemeData(backgroundColor: ColorsAsset.klightblue),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StudentLayout(),
    );
  }
}
