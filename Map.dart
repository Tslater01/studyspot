import 'package:flutter/material.dart';
import 'package:myapp/page-1/navbar.dart';
import 'package:myapp/page-1/group.dart';
import 'package:myapp/page-1/maingrouppage.dart';
import 'package:myapp/page-1/joingroup.dart';
import 'package:myapp/page-1/joingroup.dart' as JoinGroup;



Color darkgreen = Color(0xFF20DF7F);

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
  String title = 'Find Your Study Spot!';
  String currentBuilding = 'Engineering Building';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: darkgreen,
      iconTheme: IconThemeData(color: Colors.white), // Change icon color to white
        title: Text(
          widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(
      fontFamily: 'Lexend Deca',
      fontSize: 24,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  ),
),
      drawer: NavBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/page-1/images/egrstairs.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              ),
              const SizedBox(height: 60),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  currentBuilding,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 40),
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
                        return Floor1Page();
                      },
                    ));
                  },
                  child: const Text(
                    'Floor 1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                        return const Floor2Page();
                      },
                    ));
                  },
                  child: const Text(
                    'Floor 2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                          return Floor3Page();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Floor 3',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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

class Floor1Page extends StatelessWidget {
  const Floor1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: darkgreen,
        centerTitle: true,
        title: const Text(
          'Floor 1',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/page-1/images/floor1.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 300,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF224957),
                  border: OutlineInputBorder(),
                  hintText: 'Enter location',
                  hintStyle: const TextStyle(color: Colors.white),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}








class Floor2Page extends StatefulWidget {
  const Floor2Page({Key? key}) : super(key: key);

  @override
  State<Floor2Page> createState() => _Floor2PageState();
}

class _Floor2PageState extends State<Floor2Page> {
  String location = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: darkgreen,
        centerTitle: true,
        title: const Text(
          'Floor 2',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/page-1/images/floor2.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF224957),
                      border: OutlineInputBorder(),
                      hintText: 'Enter location',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    onChanged: (value) {
                      setState(() {
                        location = value;
                      });
                    },
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: darkgreen,
    padding: EdgeInsets.symmetric(horizontal: 24),
  ),
  onPressed: () {
    // Do something with the entered location
    print('Location: $location');

    // Navigate to the JoinGroupPage from joingroup.dart
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => JoinGroup.JoinGroupPage()),
    );
  },
  child: Icon(Icons.arrow_forward, color: Colors.white),
),

// ... other code

              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Floor3Page extends StatelessWidget {
  const Floor3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: darkgreen,
        centerTitle: true,
        title: const Text(
          'Floor 3',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/page-1/images/floor3.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}