import 'package:flutter/material.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SIGNUP',style: TextStyle(color: Colors.blue,fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            Center(child: Image(image: AssetImage("images/login.jpeg"))),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(Icons.email_outlined),),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
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
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(onPressed: (){}, child: Text('SIGNUP',style: TextStyle(color: Colors.white),),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),),
            ),
            SizedBox(
              width: 200,
            ),
            Row(
              children: [
                Text("Don't have an Account?",),

                TextButton(onPressed: (){Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:
                        (context) =>signup()));}, child: Text('Sign Up')),

              ],
            ),
            Text('----------OR-----------'),
            Center(
              child: Row(
                children: [
                  Icon(Icons.facebook),
              Icon(Icons.mail),
              Icon(Icons.call),
               ],),
            ),
          ],
        ),
      ),
    );;
  }
}
