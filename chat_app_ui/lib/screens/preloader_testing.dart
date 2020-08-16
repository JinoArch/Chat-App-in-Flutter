import 'dart:async';
import 'package:chat_app_ui/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration= Duration(seconds: 8);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => HomeScreen(),
    ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFFba000d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: CircleAvatar(
                radius: 105,
                backgroundImage: AssetImage('assets/images/devchat.png'),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20),),
            Text('ProChat', style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            CircularProgressIndicator(
              backgroundColor: Color(0xFFF000000),
              strokeWidth: 1,
            ),
          ],
        ),
      ),
    );
  }
}
