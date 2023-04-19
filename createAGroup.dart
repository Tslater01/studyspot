import 'package:flutter/material.dart';
import 'package:myapp/page-1/navbar.dart';
import 'package:myapp/page-1/map.dart';
import 'package:myapp/page-1/group.dart';

Color darkgreen = Color(0xFF20DF7F);

class FourTextBoxes extends StatefulWidget {
  @override
  _FourTextBoxesState createState() => _FourTextBoxesState();
}

class _FourTextBoxesState extends State<FourTextBoxes> {
  String? dropdownValue;
  TextEditingController _notesController = TextEditingController();
  // ...
  List<String> subjects = [
    'EGR101',
    'EGR102',
    'EGR121',
    'EGR122',
    'ICS105',
    'EGR302',
    'EGR304',
    'EGR305',
    'EGR306',
    'EGR401',
    'EGR402',
    'EGR405',
    'CSC312',
    'EGR182',
    'EGR225',
    'EGR328',
    'MAT245',
    'MAT255',
    'PHY201',
    'PHY203',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Spot'),
        backgroundColor: darkgreen,
      ),
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Text(
                'Create Group',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF224957),
                ),
              ),
             SizedBox(height: 20),
Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: EdgeInsets.only(left: screenWidth * 0.1),
    child: Text(
      'Class',
      style: TextStyle(
        fontFamily: 'Lexend Deca',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Color(0xFF224957),
      ),
    ),
  ),
),
Padding(
  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
  child: DropdownButton<String>(
    value: dropdownValue,
    isExpanded: true,
    onChanged: (String? newValue) {
      setState(() {
        dropdownValue = newValue;
      });
    },
    items: subjects.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  ),
),

              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.1),
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: TextField(
                  controller: _notesController,
                  style: TextStyle(color: Colors.white),
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
              SizedBox(height: 20),
              ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: darkgreen,
  ),
  onPressed: () {
    if (dropdownValue != null) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => MyHomePage(title: 'Study Spot'),
      ));
    }
  },
  child: Text('Continue'),
),

            ],
          ),
        ),
      ),
    );
  }
}
