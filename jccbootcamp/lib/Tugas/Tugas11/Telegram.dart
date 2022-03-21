import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas11/DrawerScreen.dart';

import 'Models/Chart_model.dart';

class Telegram extends StatefulWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Telegram'),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        drawer: DrawerScreen(),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(items[index].profileUrl!),
                ),
                title: Text(
                  items[index].name!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(items[index].message!),
                trailing: Text(items[index].time!),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: items.length),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.create,
              color: Colors.white,
            )));
  }
}
