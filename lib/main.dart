import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_app/firebase_options.dart';

import 'package:student_management_app/screens/create.dart';
import 'package:student_management_app/screens/delete.dart';
import 'package:student_management_app/screens/read.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //firebase init
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onTapItem(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Student Management App (Firebase)",
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: Colors.white,
      ),

      home: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.lightBlueAccent, width: 3),
            ),
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create"),

              BottomNavigationBarItem(
                icon: Icon(Icons.read_more),
                label: "Read",
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.delete),
                label: "Delete",
              ),
            ],
            backgroundColor: Colors.white,
            onTap: _onTapItem,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.lightBlueAccent,
            unselectedItemColor: Colors.grey[850],
          ),
        ),
        body:
            _selectedIndex == 0
                ? Create()
                : _selectedIndex == 1
                ? Read()
                : Delete(),
      ),
    );
  }
}
