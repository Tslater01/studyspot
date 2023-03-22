import 'package:flutter/material.dart';

import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Spot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Study Spot'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  String userName = 'Nadia Martinez';
  String classYear = 'Year: Junior';
  String userMajor = 'Major: Computer Science';

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Color.fromRGBO(34, 73, 87, 1),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: Center(
          child: Text(widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color.fromRGBO(34, 73, 87, 1))),
        ),
      ),
      drawer: NavBar(),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      NetworkImage(''), // Replace with your own image URL
                ),
              ),
              const SizedBox(height: 20),
              Text(
                userName,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                classYear,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              Text(
                userMajor,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff224957), //change color
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return classesPage();
                      },
                    ));
                  },
                  child: const Text(
                    'Classes',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff224957), //change color
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const friendsPage();
                      },
                    ));
                  },
                  child: const Text(
                    'Friends',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff224957), //change color
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return extraCurricularsPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Extra Curriculars',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff224957), //change color
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return editPage();
                        },
                      ));
                    },
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class classesPage extends StatelessWidget {
  const classesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Classes',
                    style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1))))),
        body: Container(
          child: Text('Under construction, check back later'),
        ));
  }
}

class extraCurricularsPage extends StatelessWidget {
  const extraCurricularsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Extra Curriculars',
                    style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1))))),
        body: Container(child: Text('Under construction, check back later')));
  }
}

class friendsPage extends StatelessWidget {
  const friendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Extra Curriculars',
                    style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1))))),
        body: Container(child: Text('Under construction, check back later')));
  }
}

class editPage extends StatelessWidget {
  const editPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Edit Profile',
                    style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1))))),
        body: Container(child: Text('Under construction, check back later')));
  }
}
