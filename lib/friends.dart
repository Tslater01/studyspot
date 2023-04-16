import 'package:flutter/material.dart';
import 'package:myapp/page-1/NavBar.dart';

Color darkgreen = Color(0xFF20DF7F);

class Friend {
  final String name;
  final String profilePictureUrl;
  final String major;
  final String yearInSchool;
  final List<String> studyGroups;

  Friend({
    required this.name,
    required this.profilePictureUrl,
    required this.major,
    required this.yearInSchool,
    required this.studyGroups,
  });
}

final List<Friend> friendsList = [
  Friend(
    name: 'Katie',
    profilePictureUrl:
        'https://i.pinimg.com/564x/3b/0d/d3/3b0dd3f62a4c351ad904b68442fedc29.jpg',
    major: 'Computer Science',
    yearInSchool: 'Junior',
    studyGroups: ['CSC101', 'Study Group A'],
  ),
  Friend(
    name: 'Josette',
    profilePictureUrl:
        'https://i.pinimg.com/564x/f2/3b/bc/f23bbcd2b6c7bd0071f483db3c5fd8c3.jpg',
    major: 'Biology',
    yearInSchool: 'Freshman',
    studyGroups: ['BIO101'],
  ),
  Friend(
    name: 'Naomi',
    profilePictureUrl:
        'https://i.pinimg.com/564x/6d/70/9a/6d709af646eb66d7e72f17e859172df6.jpg',
    major: 'English',
    yearInSchool: 'Senior',
    studyGroups: ['ENG201', 'ENG301', 'Best Friends'],
  ),
];

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
        backgroundColor: darkgreen,
      ),
      drawer: NavBar(),
      body: ListView.builder(
        itemCount: friendsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FriendDetails(friend: friendsList[index]),
                ),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(friendsList[index].profilePictureUrl),
              ),
              title: Text(friendsList[index].name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(friendsList[index].major),
                  Text(friendsList[index].yearInSchool),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FriendDetails extends StatelessWidget {
  final Friend friend;

  FriendDetails({required this.friend});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(friend.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(friend.profilePictureUrl),
                radius: 50.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text('Name: ${friend.name}'),
            SizedBox(height: 8.0),
            Text('Major: ${friend.major}'),
            SizedBox(height: 8.0),
            Text('Year in school: ${friend.yearInSchool}'),
            SizedBox(height: 8.0),
            Text('Study Groups:'),
            SizedBox(height: 8.0),
            Column(
              children: [
                for (String group in friend.studyGroups)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(group),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
