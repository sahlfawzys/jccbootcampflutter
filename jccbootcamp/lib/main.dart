import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas13/Routes.dart';
import 'package:jccbootcamp/Tugas/Tugas14/get_data.dart';

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
      home: GetDataScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
