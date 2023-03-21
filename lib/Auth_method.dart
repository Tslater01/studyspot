import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign up
 Future<String> signUpUser( {
      required String Email,
      required String password,
  }) async {
    String res = "Some error occurred";
    try {
        if(Email.isNotEmpty || password.isNotEmpty) {
          
        }
    } catch(err) {
      res = err.toString();
    }
    return res;
  }
}