import 'package:flutter/material.dart';
import 'package:myapp/page-1/maingrouppage.dart';
import 'package:myapp/page-1/edit_profile.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      appBar: AppBar(
        backgroundColor: Color(0xff224957),
        title: Text('Main Menu'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'study sp',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff224957)),
                    ),
                    TextSpan(
                      text: '•',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Color(0xff224957)),
                    ),
                    TextSpan(
                      text: 't',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff224957)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GroupsPage()),
                    );
                  },
                  child: Text('Groups'),
                  style: buttonStyle(),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditPage(title: 'Edit Profile')),
                    );
                  },
                  child: Text('Profile'),
                  style: buttonStyle(),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add navigation to Map page
                  },
                  child: Text('Map'),
                  style: buttonStyle(),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add navigation to Class List page
                  },
                  child: Text('Class List'),
                  style: buttonStyle(),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add navigation to Select Building page
                  },
                  child: Text('Select Building'),
                  style: buttonStyle(),
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('LOG OUT'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff20df7f),
                onPrimary: Colors.white,
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle buttonStyle() {
    return ElevatedButton.styleFrom(
      primary: Color(0xff224957),
      onPrimary: Colors.white,
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      minimumSize: Size(100, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
