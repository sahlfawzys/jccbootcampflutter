import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas12/HomeScreen.dart';
import 'package:jccbootcamp/Tugas/Tugas12/LoginScreen.dart';
import 'package:jccbootcamp/Tugas/Tugas13/AccountScreen.dart';
import 'package:jccbootcamp/Tugas/Tugas13/main_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Main':
        return MaterialPageRoute(builder: (_) => MainPage());
      case '/Login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/Account':
        return MaterialPageRoute(builder: (_) => AccountScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
