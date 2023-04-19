import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth.dart';
import 'package:myapp/page-1/joingroup.dart';
import 'package:myapp/page-1/bobsmaingrouppage.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

void _SignUp() async {
  try {
    bool loggedIn = Provider.of<Auth>(context, listen: false)
        .login(_emailController.text, _passwordController.text);
    if (loggedIn) {
      if (_emailController.text == 'bob@gmail.com') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BobsPage()),
        );
      } else {
        Navigator.pushReplacementNamed(context, '/groupsPage');
      }
    } else {
      throw Exception('Invalid email or password');
    }
  } catch (error) {
    // Show error message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error.toString()),
        backgroundColor: Colors.red,
      ),
    );
  }
}






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              Center(
                child: Image.asset(
                  'assets/page-1/images/studyspotlogo.png',
                  width: 300,
                  height: 200,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Login and find your Study Spot!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontFamily: 'Lexend Deca', color: Color(0xFF224957)),
              ),
              SizedBox(height: 40),
              TextField(
                controller: _emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff224957),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff224957),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => _SignUp(),
                child: Text('LOG IN'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff20df7f),
                  onPrimary: Colors.white,
                  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  minimumSize: Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      // Navigate to the login screen
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
