import 'package:flutter/material.dart';
import 'package:flutter_2/pages/setting_page.dart';
import 'package:flutter_2/pages/profile_page.dart';
import 'package:flutter_2/pages/home_page.dart';


class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingPage(),
  ];

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
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),


          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),

      body: _pages[_selectedIndex],
    );
  }
}