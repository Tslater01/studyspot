import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'navbar.dart';
import 'classList.dart';
import 'editProfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Spot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(title: 'Profile Page'),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  String userName = 'Tyler Slater';
  String classYear = 'Year: Senior';
  String userMajor = 'Major: Computer Science';
  ImageProvider? _profileImage;

  Future<Uint8List?> pickImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imageFile = await _picker.pickImage(source: source);

    if (imageFile != null) {
      return await imageFile.readAsBytes();
    }
    return null;
  }

  void showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> _handleImageSelection(ImageSource source) async {
    final Uint8List? imageData = await this.pickImage(source);
    if (imageData != null) {
      setState(() {
        _profileImage = MemoryImage(imageData);
      });
    } else {
      this.showSnackBar('Error picking image. Please try again.', context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              color: Color.fromRGBO(34, 73, 87, 1),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromRGBO(34, 73, 87, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: NavBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Wrap(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.camera_alt),
                              title: Text('Take a photo'),
                              onTap: () {
                                Navigator.pop(context);
                                _handleImageSelection(ImageSource.camera);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.photo_library),
                              title: Text('Choose from gallery'),
                              onTap: () {
                                Navigator.pop(context);
                                _handleImageSelection(ImageSource.gallery);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        _profileImage ?? AssetImage('assets/page-1/images/TylerPFP.jpg'),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  userName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  classYear,
                  style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Text(
            userMajor,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff224957),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return classesPage();
                  },
                ));
              },
              child: const Text(
                'Classes',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff224957),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ClassList(title: 'Class List');
                  },
                ));
              },
              child: const Text(
                'Friends',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff224957),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return extraCurricularsPage();
                    },
                  ),
                );
              },
              child: const Text(
                'Extra Curriculars',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 100),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff224957),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditPage(title: 'Profile'),
                    ),
                  );
                },
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
)
);
}
}

class classesPage extends StatelessWidget {
  const classesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Classes',
                    style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1))))),
        body: Container(
          child: Text('Under construction, check back later'),
        ));
  }
}

class extraCurricularsPage extends StatelessWidget {
  const extraCurricularsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Extra Curriculars',
                    style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1))))),
        body: Container(child: Text('Under construction, check back later')));
  }
}

class friendsPage extends StatelessWidget {
  const friendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Extra Curriculars',
                    style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1))))),
        body: Container(child: Text('Under construction, check back later')));
  }
}
