import 'package:flutter/material.dart';

class SecurityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFF39A160),
        title: Text('Security'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password Settings',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text('Change Password'),
              onTap: () {
                // TODO: Implement change password functionality
              },
            ),
            ListTile(
              title: Text('Enable Two-Factor Authentication'),
              onTap: () {
                // TODO: Implement enable two-factor authentication functionality
              },
            ),
            SizedBox(height: 32.0),
            Text(
              'Privacy Settings',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text('Manage App Permissions'),
              onTap: () {
                // TODO: Implement manage app permissions functionality
              },
            ),
            ListTile(
              title: Text('Clear Browsing Data'),
              onTap: () {
                // TODO: Implement clear browsing data functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}