import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas13/Routes.dart';

import 'Tugas/Tugas12/HomeScreen.dart';
import 'Tugas/Tugas12/LoginScreen.dart';
import 'Tugas/Tugas11/Telegram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
