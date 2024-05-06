import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  String greattingmessage="";

  // Make user input controler here...
  TextEditingController myController = TextEditingController();

  void getUserInput() {
    String userName=myController.text;
    setState(() {
      greattingmessage="Hello "+userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('To do App', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.greenAccent),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(greattingmessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: "Enter Input Here"
              ),
            ),
            ElevatedButton(onPressed: getUserInput, child: const Text('Submit'))
          ]),
        ),
      ),
    );
  }
}
