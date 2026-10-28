import 'package:flutter/material.dart';

class SimpleDialogScreen extends StatefulWidget {
  const SimpleDialogScreen({super.key});

  @override
  State<SimpleDialogScreen> createState() => _SimpleDialogScreenState();
}

class _SimpleDialogScreenState extends State<SimpleDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Simple Dialog"))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Hello!"),
                  content: Text("Welcome to Flutter"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
