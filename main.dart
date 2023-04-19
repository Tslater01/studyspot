import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth.dart'; // Import the Auth class
import 'signup.dart';
import 'maingrouppage.dart';
import 'classList.dart';
import 'editClass.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Auth(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: Consumer<Auth>(
          builder: (context, auth, child) {
            return auth.isLoggedIn() ? GroupsPage() : SignUpScreen();
          },
        ),
        routes: {
          '/login': (context) => SignUpScreen(), // Add this line
          '/groupsPage': (context) => GroupsPage(),
          '/classList': (context) => const ClassListApp(),
          '/editClass': (context) => const EditClassApp(),
        },
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
