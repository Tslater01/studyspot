import 'package:flutter/material.dart';
import 'package:myapp/page-1/navbar.dart';
import 'package:myapp/page-1/maingrouppage.dart';

Color darkgreen = Color(0xFF20DF7F);

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Spot'),
        backgroundColor: darkgreen,
      ),
      drawer: NavBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://calbaptist.edu/_resources/images/Logo_CBU-wordmark-stacked-positive.png',
                width: 300,
                height: 200,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GroupsPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/32/32441.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Groups',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF224957),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GroupsPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.network(
                            'https://icons.veryicon.com/png/o/application/immwa2016/list-11.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Class List',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF224957),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GroupsPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/3082/3082383.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Map',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF224957),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GroupsPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.network(
                            'https://icons.veryicon.com/png/o/education-technology/alibaba-big-data-oneui/user-profile.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF224957),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GroupsPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.network(
                            'https://www.iconpacks.net/icons/1/free-building-icon-1062-thumb.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Select',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF224957),
                            ),
                          ),
                          const Text(
                            'Building',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF224957),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}
