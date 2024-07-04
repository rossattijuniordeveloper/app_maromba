import 'package:app_maromba/screens/exercicio_tela.dart';
import 'package:app_maromba/screens/login.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Maromba',
//      home: ExercicioTela(),
      home: Login(),
    );
  }
}
