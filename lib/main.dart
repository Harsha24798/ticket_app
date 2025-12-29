import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return Scaffold(
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
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Welcome to the POS System!', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Image(image: AssetImage('assets/login.jpg'), fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
