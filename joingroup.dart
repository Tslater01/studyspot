import 'package:flutter/material.dart';
import 'package:myapp/page-1/createAGroup.dart';
import 'package:myapp/page-1/navbar.dart';
import 'package:myapp/page-1/EGR101.dart';


Color darkgreen = Color(0xFF20DF7F);

class JoinGroupPage extends StatefulWidget {
  @override
  _JoinGroupPageState createState() => _JoinGroupPageState();
}

class _JoinGroupPageState extends State<JoinGroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Spot'),
        backgroundColor: darkgreen,
      ),
      backgroundColor: Color(0xFFE5E5E5),
      drawer: NavBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/page-1/images/CBU_Logo.png',
                width: 300,
                height: 200,
              ),
              SizedBox(height: 0),
              Text(
                'Join Group',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF224957),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF224957)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'EGR413',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF224957)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'PHY203',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EGR101Page()),
    );
  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF224957)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'EGR101',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              const Text(
                'Create Group',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF224957),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourTextBoxes()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF224957)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text('+'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
