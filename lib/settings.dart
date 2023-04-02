import 'package:flutter/material.dart';
import 'package:myapp/page-1/privacyPolicy.dart';
import 'package:myapp/page-1/security.dart';
import 'package:myapp/page-1/termsOfService.dart';

TextStyle _textStyle = TextStyle(fontFamily: 'Lexend Deca');

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationOn = true;
  bool _darkModeOn = false;
  String _selectedLanguage = 'English';
  bool _fingerprintOn = true;
  bool _locationOn = false;
  bool _biometricOn = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF39A160),
          title: Text('Settings'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'General'),
              Tab(text: 'Privacy and Security'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildGeneralTab(),
            _buildPrivacyAndSecurityTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildGeneralTab() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwitchListTile(
            title: Text('Notifications'),
            value: _notificationOn,
            activeColor: Colors.green,
            onChanged: (bool value) {
              setState(() {
                _notificationOn = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Dark Mode'),
            value: _darkModeOn,
            activeColor: Colors.green,
            onChanged: (bool value) {
              setState(() {
                _darkModeOn = value;
              });
            },
          ),
          SizedBox(height: 16.0),
          Text('Language'),
          DropdownButton<String>(
            value: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
            items: <String>['English', 'Spanish', 'French', 'German']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            onTap: () {
              // TODO: navigate to account settings page
            },
          ),
          SizedBox(height: 16.0),
          Text('Legal'),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy Policy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecurityPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Terms of Service'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsOfServicePage()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyAndSecurityTab() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwitchListTile(
            title: Text('Fingerprint'),
            value: _fingerprintOn,
            activeColor: Colors.green,
            onChanged: (bool value) {
              setState(() {
                _fingerprintOn = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Location'),
            value: _locationOn,
            activeColor: Colors.green,
            onChanged: (bool value) {
              setState(() {
                _locationOn = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Biometric Authentication'),
            value: _biometricOn,
            activeColor: Colors.green,
            onChanged: (bool value) {
              setState(() {
                _biometricOn = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
