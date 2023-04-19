import 'package:flutter/material.dart';
import 'ProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EditPage(title: 'Edit Profile'),
    );
  }
}

class EditPage extends StatefulWidget {
  const EditPage({super.key, required this.title});

  final String title;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final nameController = TextEditingController();
  final classLevelController = TextEditingController();
  final majorController = TextEditingController();
  final passwordController = TextEditingController();
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
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Color.fromRGBO(34, 73, 87, 1),
                        ),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1498467442603008004/D9KLCHGO_400x400.jpg'),
                        ),
                      ),
                    ),
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
              buildTextField("Full Name", "Ex: Robert Jameson", false),
              buildTextField("Class Level", "Ex: Freshman", false),
              buildTextField("Major", "Ex: Engineering", false),
              buildTextField("Password", "*******", true),
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
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) =>
                                //         ProfilePage(title: 'ClassList'),
                                //   ),
                                // );
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
                          title: const Text('Changes Saved!'),
                          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
                          content: const Text(
                            'Your changes have been saved! Hit continue to return to the profile page.',
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
                                //     builder: (context) =>
                                //         ProfilePage(title: 'ClassList'),
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
