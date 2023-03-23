import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();

  void _signUp() {
    // Implement your sign-up logic here
    // After successful sign-up, navigate to the main menu
    Navigator.pushNamed(context, '/mainMenu');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _emailController,
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
                onPressed: _signUp,
                child: Text('SIGN UP'),
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
