import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas15/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          color: Color.fromARGB(236, 174, 255, 251),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pie_chart,
                          size: 150,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            fillColor: Color.fromARGB(255, 241, 238, 229),
                            filled: true,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: hidden,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  hidden = !hidden;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: hidden ? Colors.blue : Colors.grey,
                                )),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            fillColor: Color.fromARGB(255, 229, 236, 241),
                            filled: true,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              SnackBar snackBar = SnackBar(
                                content: Text('Dasar Pelupa'),
                                duration: Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: Text('Forgot password?')),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              await _firebaseAuth
                                  .createUserWithEmailAndPassword(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  )
                                  .then((value) =>
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) => HomePage(),
                                        ),
                                      ));
                            } on FirebaseAuthException catch (e) {
                              SnackBar snackBar = SnackBar(
                                content: Text(e.message!),
                                duration: Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 18, 134, 230),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 85)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              await _firebaseAuth
                                  .signInWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text)
                                  .then((value) =>
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) => HomePage(),
                                        ),
                                      ));
                            } on FirebaseAuthException catch (e) {
                              SnackBar snackBar = SnackBar(
                                content: Text(e.message!),
                                duration: Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 18, 134, 230),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 100)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
