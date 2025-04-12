import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Delete extends StatefulWidget {
  const Delete({super.key});

  @override
  State<Delete> createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  TextEditingController studentDeleteController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    studentDeleteController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    studentDeleteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Delete", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: studentDeleteController,
              decoration: InputDecoration(
                labelText: "Id",
                labelStyle: TextStyle(color: Colors.grey[800], fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    studentDeleteController.text.isNotEmpty
                        ? IconButton(
                          onPressed: () {
                            studentDeleteController.clear();
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
                  child: Text("Delete", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
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
