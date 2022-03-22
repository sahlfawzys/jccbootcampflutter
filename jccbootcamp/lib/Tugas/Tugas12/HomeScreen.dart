import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Go Trip',
          style: TextStyle(color: Colors.grey.shade800),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/fawzy.jpg'),
              ),
            ),
          )
        ],
        backgroundColor: Color.fromARGB(236, 174, 255, 251),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome,',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Fawzy',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Search Place.....',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fillColor: Color.fromARGB(255, 241, 238, 229),
                filled: true,
                suffixIcon: Icon(Icons.search, color: Colors.lightBlue),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Recommendation Places :'),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/img/mountain1.jpeg'))),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/img/mountain2.png'))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
