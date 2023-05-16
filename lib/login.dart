import 'package:flutter/material.dart';
import 'package:splashscreen/signup.dart';

class mlogin extends StatefulWidget {
  const mlogin({Key? key}) : super(key: key);

  @override
  State<mlogin> createState() => _mloginState();
}

class _mloginState extends State<mlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Center(child: Image(image: AssetImage("images/login.jpeg")
            )
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(Icons.email_outlined),),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(Icons.lock),),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              ),
            ),
            SizedBox(
              width: 200,
            ),
            Center(
              child: Row(
                children: [
                  Text(
                    "Don't have an Account?",
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text('Sign Up')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
