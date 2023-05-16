import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/pmain.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds:5),
        ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
            (context) =>login()
        )

        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
    body: Center(
          child: CircleAvatar(
            backgroundImage:
           AssetImage("images/logo.jpeg"),
           radius: 100,
          ),
        )
    );
  }}
