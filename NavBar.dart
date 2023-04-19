import 'package:flutter/material.dart';
import 'package:myapp/page-1/Map.dart';
import 'package:myapp/page-1/ProfilePage.dart';
import 'package:myapp/page-1/maingrouppage.dart';
import 'settings.dart';
import 'package:provider/provider.dart';
import 'auth.dart';

class NavBar extends StatefulWidget {
  final ImageProvider? profileImage;

  const NavBar({Key? key, this.profileImage}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  ImageProvider? _profileImage;

  @override
  void initState() {
    super.initState();
    _profileImage = widget.profileImage;
  }

   @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(auth.userName ?? ''),
            accountEmail: Text(auth.loggedInEmail ?? ''),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: _profileImage != null
                    ? Image(image: _profileImage!, width: 90, height: 90, fit: BoxFit.cover)
                    : auth.isLoggedIn()
                        ? Image.asset(auth.profileImagePath!, width: 90, height: 90, fit: BoxFit.cover)
                        : SizedBox(),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(
                  'assets/page-1/images/CBUCampus.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // ... rest of the ListTile widgets
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () async {
              final newImage = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage(title: 'Edit Profile')),
              );
              if (newImage != null) {
                setState(() {
                  _profileImage = MemoryImage(newImage);
                });
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Groups'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Map'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'Study Spot')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
         ListTile(
  leading: const Icon(Icons.logout),
  title: const Text('Logout'),
  onTap: () {
    // Log out using the Auth class
    Provider.of<Auth>(context, listen: false).logout();
    Navigator.pushNamedAndRemoveUntil(context, '/login', (Route<dynamic> route) => false);
  },
),
        ],
      ),
    );
  }
}
