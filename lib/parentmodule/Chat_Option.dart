import 'package:flutter/material.dart'; // Make sure this is imported
// import 'package:flutter_projects/parentmodule/lib/profile.dart';

class ChatOption extends StatefulWidget {
  const ChatOption({super.key});

  @override
  State<ChatOption> createState() => _ChatOptionState();
}

class _ChatOptionState extends State<ChatOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat Option',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
