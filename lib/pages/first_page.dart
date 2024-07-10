import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent[100],
      ),

      drawer: Drawer(
        backgroundColor: Colors.deepPurpleAccent[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                  Icons.important_devices,
                size: 48
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOMEPAGE"),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),


          ],
        ),
      ),

      body: Center(
        child: ElevatedButton(
          child: Text("Go To Second Page"),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          }
        ),
      )
    );
  }
}