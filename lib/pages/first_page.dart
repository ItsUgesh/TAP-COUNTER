import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/profile_page.dart';
import 'package:flutter_demo/pages/setting_page.dart';

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
    home_page(),
    ProfilePage(),
    setting_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade100,
        title: const Text('1st page'),
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 149, 105, 109),
        child: Column(
          children: [
            //logo or header
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 33,
              ),
            ),
            //home page list tile
            ListTile(
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
              },
              title: const Text("H O M E"),
            ),
            //setting page list tile
            ListTile(
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingpage");
              },
              title: Text("S E T T I N G"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
      ]),
    );
  }
}
