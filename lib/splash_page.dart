import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Image.asset(
                'assets/hallo-logo.png',
                height: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 60),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "School-Q",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We belive that education is \nFor everone",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[500], fontSize: 20),
                  ),
                  SizedBox(height: 40),
                  CupertinoButton(
                    child: Text("Get Started"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
