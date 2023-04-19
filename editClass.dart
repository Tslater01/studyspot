import 'package:flutter/material.dart';
import 'classList.dart';

class EditClassApp extends StatelessWidget {
  const EditClassApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit Classes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EditClass(title: 'Edit Classes'),
    );
  }
}

class EditClass extends StatefulWidget {
  const EditClass({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EditClass> createState() => _EditClassState();
}

class _EditClassState extends State<EditClass> {
  final departCodeController = TextEditingController();
  final courseCodeController = TextEditingController();
  final classNameController = TextEditingController();
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 229, 229, 1),
        title: Text(
          'Edit Classes',
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
              SizedBox(height: 30),
              buildTextField("Department Code", "Ex: EGR", false),
              buildTextField("Course Code", "Ex: 101", false),
              buildTextField("Class Name", "Ex: Intro to C++", false),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Exit without adding a class?'),
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ClassList(title: 'Class List'),
                                  ),
                                );
                              },
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
                      "Cancel",
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
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Class added!'),
                          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
                          content: const Text(
                            'Your class has been added to your profile! Hit continue to return to the previous page.',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              color: Color.fromRGBO(34, 73, 87, 1),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => ClassList(),
                                //   ),
                                // );
                              },
                              child: const Text("Continue"),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(34, 73, 87, 1),
                                padding: EdgeInsets.symmetric(horizontal: 50),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Dev button delete later pls :) "),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Color.fromRGBO(229, 229, 229, 1),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(32, 223, 127, 1),
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

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isObscurePassword = !isObscurePassword;
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Color.fromRGBO(229, 229, 229, 1),
                  ),
                )
              : null,
          contentPadding: const EdgeInsets.only(bottom: 5),
          filled: true,
          fillColor: Color.fromRGBO(34, 73, 87, 1),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color.fromRGBO(32, 223, 127, 1),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(229, 229, 229, 1),
          ),
        ),
      ),
    );
  }
}
