import 'package:flutter/material.dart';
import 'package:myapp/page-1/navbar.dart';
import 'package:myapp/page-1/map.dart';

Color darkgreen = Color(0xFF20DF7F);

class FourTextBoxes extends StatefulWidget {
  @override
  _FourTextBoxesState createState() => _FourTextBoxesState();
}

class _FourTextBoxesState extends State<FourTextBoxes> {
  String? dropdownValue;

  List<String> subjects = [
    'EGR101 Enginrg from a Christian Wrldvw',
    'EGR102 Introduction Engineering Design',
    'EGR121 Intro Computer Programming C++',
    'EGR122 Visualization Languages I',
    'ICS105 Introduction to Global Studies',
    'EGR302 Engnrng Design and Documentation',
    'EGR304 Leadership Cohort',
    'EGR305 Engineering Statistics',
    'EGR306 Internship Preparation',
    'EGR401 Capstone Design',
    'EGR402 Capstone Design and Presentation',
    'EGR405 Internship Report and Presentatn',
    'CSC312 Algorithms',
    'EGR182 Intro Math Engineering Applicatn',
    'EGR225 Discrete Structures I',
    'EGR328 Numerical Methods for Computing',
    'MAT245 Analytcl Geometry and Calculus I',
    'MAT255 Anlytcl Geometry and Calculus II',
    'PHY201 Physics for Engineers I with Lab',
    'PHY203 Physics for Engineers II wth Lab',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Study Spot',
            style: TextStyle(
              color: Color.fromRGBO(34, 73, 87, 1),
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              color: Color.fromRGBO(34, 73, 87, 1),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: NavBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                padding: const EdgeInsets.only(right: 275.0),
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
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF224957),
                      border: OutlineInputBorder(),
                      hintText: 'Enter subject of study group',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items:
                        subjects.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            color: Color.fromRGBO(34, 73, 87, 1),
                          ), // Set the font color to white
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 290.0),
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
                style: ElevatedButton.styleFrom(
                  primary: darkgreen,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MyHomePage(title: 'Study Spot'),
                  ));
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
