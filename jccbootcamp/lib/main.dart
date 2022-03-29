import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jccbootcamp/Latihan/Latihan2/pages/page_1.dart';
import 'package:jccbootcamp/Latihan/Latihan2/routes/page_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyCFRoDW5BpLwg6rEY1UjOCdNL2LCFBZDLA",
      appId: "1:107937244488:android:d22159b573417a70fbbf7d",
      messagingSenderId: "project-107937244488",
      projectId: "jcc-auth-b7853",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PageOne(),
      getPages: pageRouteApp.pages,
    );
  }
}
