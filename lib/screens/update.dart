import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  TextEditingController studentManagementController = TextEditingController();
  TextEditingController studentManagementController1 = TextEditingController();
  TextEditingController studentManagementController2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    studentManagementController.addListener(() {
      print(studentManagementController.text);
      setState(() {});
    });
    studentManagementController1.addListener(() {
      setState(() {});
    });
    studentManagementController2.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    studentManagementController.dispose();
    studentManagementController1.dispose();
    studentManagementController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Update", style: TextStyle(color: Colors.white)),

        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextField(
              controller: studentManagementController,
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.grey[800], fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    studentManagementController.text.isNotEmpty
                        ? IconButton(
                          onPressed: () {
                            studentManagementController.clear();
                          },
                          icon: Icon(Icons.close),
                        )
                        : null,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextField(
              controller: studentManagementController1,
              decoration: InputDecoration(
                labelText: "Id",
                labelStyle: TextStyle(color: Colors.grey[800], fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    studentManagementController1.text.isNotEmpty
                        ? IconButton(
                          onPressed: () {
                            studentManagementController1.clear();
                          },
                          icon: Icon(Icons.close),
                        )
                        : null,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextField(
              controller: studentManagementController2,
              decoration: InputDecoration(
                labelText: "Degree",
                labelStyle: TextStyle(color: Colors.grey[800], fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    studentManagementController2.text.isNotEmpty
                        ? IconButton(
                          onPressed: () {
                            studentManagementController2.clear();
                          },
                          icon: Icon(Icons.close),
                        )
                        : null,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Update", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
