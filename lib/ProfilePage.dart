import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Spot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  String userName = 'Bob';
  String classYear = 'Junior';
  String userMajor = 'Engineering';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 206, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(63, 208, 201, 50),
        title: Center(
          child: Text(widget.title,
              style: const TextStyle(color: Color.fromRGBO(255, 255, 206, 1))),
        ),
      ),
      body: Container(
        child: currentIndex == 0
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(userName, style: const TextStyle(color: Colors.black)),
                    Text(classYear,
                        style: const TextStyle(color: Colors.black)),
                    Text(userMajor,
                        style: const TextStyle(color: Colors.black)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(57, 161, 96, 20)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return classesPage();
                          }));
                        },
                        child: const Text('Classes',
                            style: TextStyle(color: Colors.black))),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(57, 161, 96, 20)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return extraCurricularsPage();
                          }));
                        },
                        child: const Text('Extra Curriculars',
                            style: TextStyle(color: Colors.black))),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(57, 161, 96, 20)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return editPage();
                          }));
                        },
                        child: const Text('Edit',
                            style: TextStyle(color: Colors.black)))
                  ],
                ),
              )
            : Center(
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromRGBO(63, 208, 201, 50)),
                            onPressed: () {},
                            child: const Icon(Icons.filter_list_rounded,
                                color: Colors.black)),
                        const Text('Under construction, come back later')
                      ]),
                ),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(63, 208, 201, 50),
          items: const [
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.account_circle_rounded, color: Colors.black)),
            BottomNavigationBarItem(
                label: 'Friends',
                icon: Icon(Icons.supervised_user_circle_rounded,
                    color: Colors.pink)),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}

class classesPage extends StatelessWidget {
  const classesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 206, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Classes',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 206, 1))))),
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
        backgroundColor: const Color.fromRGBO(255, 255, 206, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Extra Curriculars',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 206, 1))))),
        body: Container(child: Text('Under construction, check back later')));
  }
}

class editPage extends StatelessWidget {
  const editPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 206, 1),
        appBar: AppBar(
            title: const Center(
                child: Text('Edit Profile',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 206, 1))))),
        body: Container(child: Text('Under construction, check back later')));
  }
}
