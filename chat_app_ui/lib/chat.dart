import 'package:flutter/material.dart';
//import './screens/home_screen.dart';
import './screens/preloader_testing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inbox',
      theme: ThemeData(
        primaryColor: Color(0xFFf44336),
      ),
      home: SplashScreen(),
      //home: HomeScreen(),
      );
  }
}
