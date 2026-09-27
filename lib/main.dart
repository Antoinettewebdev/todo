import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Texting(),
    );
  }
}

class Texting extends StatefulWidget {
  const Texting({super.key});

  @override
  State<Texting> createState() => _TextingState();
}

class _TextingState extends State<Texting> {
  TextEditingController myController = TextEditingController();
  String greetingMessage = "";

  void greetUser() {
    setState(() {
      greetingMessage = "Hello " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage, style: TextStyle(fontSize: 22)),

              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                ),
              ),

              ElevatedButton(onPressed: greetUser, child: Text("Tap")),
            ],
          ),
        ),
      ),
    );
  }
}
