import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas15/login_page.dart';

class HomePage extends StatelessWidget {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
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
              auth.currentUser!.email!,
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
            SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _signOut().then(
                    (value) => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    ),
                  );
                },
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 18, 134, 230),
                    shape: StadiumBorder(),
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
