import 'package:flutter/material.dart';
import 'package:myapp/page-1/navbar.dart';

Color darkgreen = Color(0xFF20DF7F);

class FourTextBoxes extends StatefulWidget {
  @override
  _FourTextBoxesState createState() => _FourTextBoxesState();
}

class _FourTextBoxesState extends State<FourTextBoxes> {
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
            children: const [
              Text(
                'Create Group',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF224957),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(right: 275.0),
                child: Text(
                  'Subject',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF224957),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: SizedBox(
                  width: 350, // specify the desired width
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF224957),
                      border: OutlineInputBorder(),
                      hintText: 'Enter subject of study group',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 240.0),
                child: Text(
                  'Class Code',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF224957),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: SizedBox(
                  width: 350, // specify the desired width
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF224957),
                      border: OutlineInputBorder(),
                      hintText: 'Enter class code',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 220.0),
                child: Text(
                  'Group Name',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF224957),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: SizedBox(
                  width: 350, // specify the desired width
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF224957),
                      border: OutlineInputBorder(),
                      hintText: 'Enter group name',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 290.0),
                child: Text(
                  'Notes',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF224957),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: SizedBox(
                  width: 350, // specify the desired width
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF224957),
                      border: OutlineInputBorder(),
                      hintText: 'Enter additional notes',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (null),
                child: Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
