import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Spot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClassList(title: 'Class List'),
    );
  }
}

class ClassList extends StatefulWidget {
  const ClassList({super.key, required this.title});

  final String title;

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 229, 229, 1),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Color.fromRGBO(34, 73, 87, 1),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Color.fromRGBO(34, 73, 87, 1),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Color.fromRGBO(34, 73, 87, 1),
                          ),
                          color: Color.fromRGBO(32, 223, 127, 1),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Color.fromRGBO(229, 229, 229, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Exit without saving?'),
                          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
                          content: const Text(
                            'Hitting continue will return you to the previous screen, hit back to cancel.',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              color: Color.fromRGBO(34, 73, 87, 1),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Continue"),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(34, 73, 87, 1),
                                padding: EdgeInsets.symmetric(horizontal: 50),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Back"),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(34, 73, 87, 1),
                                padding: EdgeInsets.symmetric(horizontal: 50),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Color.fromRGBO(34, 73, 87, 1),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
