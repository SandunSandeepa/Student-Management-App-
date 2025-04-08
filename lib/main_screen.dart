import 'package:flutter/material.dart';
import 'package:student_management_app/screens/create.dart';
import 'package:student_management_app/screens/delete.dart';
import 'package:student_management_app/screens/read.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onTapItem(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create"),

          BottomNavigationBarItem(icon: Icon(Icons.read_more), label: "Read"),

          BottomNavigationBarItem(icon: Icon(Icons.delete), label: "Delete"),
        ],
        backgroundColor: Colors.white,
        onTap: _onTapItem,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey[850],
      ),
      body:
          _selectedIndex == 0
              ? Create()
              : _selectedIndex == 1
              ? Read()
              : Delete(),
    );
  }
}
