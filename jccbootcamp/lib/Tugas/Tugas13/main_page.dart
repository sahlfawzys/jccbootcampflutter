import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas11/DrawerScreen.dart';
import 'package:jccbootcamp/Tugas/Tugas12/HomeScreen.dart';
import 'package:jccbootcamp/Tugas/Tugas13/FavoriteScreen.dart';
import 'package:jccbootcamp/Tugas/Tugas13/SearchScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int page_idx = 0;
  final List pages = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
  ];

  void onTap(int index) {
    print(index);
    setState(() {
      page_idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Go Trip',
          style: TextStyle(color: Colors.grey.shade800),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Account');
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/fawzy.jpg'),
              ),
            ),
          )
        ],
        backgroundColor: Color.fromARGB(236, 174, 255, 251),
      ),
      body: pages[page_idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page_idx,
        onTap: onTap,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey.shade400.withOpacity(0.7),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
        ],
      ),
    );
  }
}
