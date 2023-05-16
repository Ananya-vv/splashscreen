import 'package:flutter/material.dart';
import 'package:splashscreen/login.dart';
import 'package:splashscreen/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: 10,
      ),
      Text(
        'WELCOME TO EDU',
        style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
      Center(
        child: Image(image: AssetImage("images/m.jpeg")),
      ),
      SizedBox(
        height: 50,
        width: 200,
        child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => mlogin()));
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.blue,
              ),
            )),
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 50,
        width: 200,
        child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => signup()));
            },
            child: Text(
              'SignUp',
              style: TextStyle(color: Colors.blue),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.white,
              ),
            )),
      ),
    ]));
  }
}
