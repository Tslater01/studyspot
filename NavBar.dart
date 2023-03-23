import 'package:flutter/material.dart';
import 'package:myapp/page-1/maingrouppage.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('StudySpot.com'),
            accountEmail: const Text('nadiaz.martinez@calbaptist.edu'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oregonctso.org/Websites/oregoncte/images/deca%20headshot.JPG',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://calbaptist.edu/_resources/images/CBU-Campus-45.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Class List'),
            onTap: () => null,
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
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.room),
            title: const Text('Select Building'),
            onTap: () => null,
          ),
          ListTile(

            
          )
        ],
      ),
    );
  }
}
