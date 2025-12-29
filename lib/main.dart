import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search button press
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Handle notifications button press
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Handle notifications button press
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 33, 243, 135),
                  const Color.fromARGB(255, 126, 176, 39),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: Text('Pos System'),
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.home),
            Icon(Icons.settings),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
