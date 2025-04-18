import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_management_app/model/studmodel.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController degreeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.addListener(() {
      setState(() {});
    });
    idController.addListener(() {
      setState(() {});
    });
    degreeController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    idController.dispose();
    degreeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Create", style: TextStyle(color: Colors.white)),

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
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.grey[800], fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    nameController.text.isNotEmpty
                        ? IconButton(
                          onPressed: () {
                            nameController.clear();
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
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: idController,
              decoration: InputDecoration(
                labelText: "Id",
                labelStyle: TextStyle(color: Colors.grey[800], fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    idController.text.isNotEmpty
                        ? IconButton(
                          onPressed: () {
                            idController.clear();
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
              controller: degreeController,
              decoration: InputDecoration(
                labelText: "Degree",
                labelStyle: TextStyle(color: Colors.grey[800], fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    degreeController.text.isNotEmpty
                        ? IconButton(
                          onPressed: () {
                            degreeController.clear();
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
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
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
