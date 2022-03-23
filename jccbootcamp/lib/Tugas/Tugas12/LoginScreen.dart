import 'package:flutter/material.dart';
import 'package:jccbootcamp/Tugas/Tugas13/main_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidden = false;

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
                          Icons.person,
                          size: 150,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Username or Email',
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
                            onPressed: () {}, child: Text('Forgot password?')),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, '/Main');
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 18, 134, 230),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 100)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'version : 0.0.1',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
