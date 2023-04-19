import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  String? _loggedInEmail;

  Map<String, dynamic> _userData = {
    'tylerc.slater@calbaptist.edu': {
      'name': 'Tyler',
      'email': 'tylerc.slater@calbaptist.edu',
      'profileImage': 'assets/page-1/images/TylerPFP.jpg',
    },
    'bob@gmail.com': {
      'name': 'Bob',
      'email': 'bob@gmail.com',
      'profileImage': 'assets/page-1/images/BobPFP.jpg',
    },
  };

  bool login(String email, String password) {
    if (_userData.containsKey(email)) {
      _loggedInEmail = email;
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }

  void logout() {
    _loggedInEmail = null;
    notifyListeners();
  }

  bool isLoggedIn() {
    return _loggedInEmail != null;
  }

  String? get loggedInEmail => _loggedInEmail;

  String? get userName => _loggedInEmail != null ? _userData[_loggedInEmail]['name'] : null;

  String? get profileImagePath => _loggedInEmail != null ? _userData[_loggedInEmail]['profileImage'] : null;
}
