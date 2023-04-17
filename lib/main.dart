import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:floormap/NavBar.dart';

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
      home: const MyHomePage(title: 'Study Spot'),
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
  String title = 'Find Your Study Spot!';
  String currentBuilding = 'Engineering Building';

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromRGBO(34, 73, 87, 1)),
        //here is the problem
        title: Center(
          child: Text(widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color.fromRGBO(34, 73, 87, 1))),
        ),
      ),
      drawer: NavBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets\page-1\images\egrstairs.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              ),
              const SizedBox(height: 60),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                currentBuilding,
                style: const TextStyle(
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
                    primary: const Color(0xff224957), //change color
                  ),
                  onPressed: () {
                    MapLauncherDemo;
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Floor1Page();
                      },
                    ));
                  },
                  child: const Text(
                    'Floor 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff224957), //change color
                  ),
                  onPressed: () {
                    MapLauncherDemo;
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Floor2Page();
                      },
                    ));
                  },
                  child: const Text(
                    'Floor 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff224957), //change color
                  ),
                  onPressed: () {
                    MapLauncherDemo;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Floor3Page();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Floor 3',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Floor1Page extends StatelessWidget {
  const Floor1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Floor 1',
            style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1)),
          ),
        ),
      ),
      body: Container(
        child: Image.asset(
          'assets/page-1/images/floor1.png', // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Floor2Page extends StatelessWidget {
  const Floor2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Floor 2',
            style: TextStyle(color: Color.fromRGBO(34, 73, 87, 1)),
          ),
        ),
      ),
      body: Container(
        child: Image.asset(
          'assets/page-1/images/floor2.png', // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Floor3Page extends StatelessWidget {
  const Floor3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        backgroundColor: darkgreen,
        centerTitle: true,
        title: const Text(
          'Floor 3',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/page-1/images/floor3.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MapLauncherDemo extends StatelessWidget {
  openMapsSheet(context) async {
    try {
      final coords = Coords(37.759392, -122.5107336);
      final title = "Ocean Beach";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,
                          title: title,
                        ),
                        title: Text(map.mapName),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map Launcher'),
        ),
        body: Center(child: Builder(
          builder: (context) {
            return MaterialButton(
              onPressed: () => openMapsSheet(context),
              child: Text('Show Maps'),
            );
          },
        )),
      ),
    );
  }
}
