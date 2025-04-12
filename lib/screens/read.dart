import 'package:flutter/material.dart';
import 'package:student_management_app/screens/update.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  final students = [
    {"name": "Sandun", "id": 1, "degree": "Software Engineering"},
    // {"name": "Sandun", "id": 2, "degree": "Software Engineering"},
    // {"name": "Sandun", "id": 3, "degree": "Software Engineering"},
    // {"name": "Sandun", "id": 1, "degree": "Software Engineering"},
    // {"name": "Sandun", "id": 2, "degree": "Software Engineering"},
    // {"name": "Sandun", "id": 3, "degree": "Software Engineering"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Read", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name : ${student['name']}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Update()),
                        );
                      },
                      icon: Icon(Icons.edit),
                    ),
                  ],
                ),
                Text(
                  "Id : ${student['id']}".toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  "Degree : ${student['degree']}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
