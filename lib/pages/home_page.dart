import 'package:flutter/material.dart';
import 'package:mentalapp/pages/firstpage.dart';
import 'package:mentalapp/pages/messagepage.dart';
import 'package:mentalapp/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final _pages = [FirstPage(), Messagepage(), ProfilePage()];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => (_navigateBottomBar(index)),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'Home',
            tooltip: 'Home'
          ),

          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message',tooltip: 'Message'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile',tooltip: 'Profile'),
        ],
      ),

      body: _pages[_selectedIndex],
    );
  }
}
