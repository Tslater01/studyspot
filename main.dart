import 'package:flutter/material.dart';
import 'signup.dart';
import 'mainmenu.dart'; 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpScreen(),
       '/mainMenu': (context) => MainMenu(), 
      },
    );
  }
}

void main() {
  runApp(MyApp());
}
