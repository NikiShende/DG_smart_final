import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 70,
        title: Text('ChatBot',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          size: 30.0, 
          color: Colors.white,// Set the size of the back arrow here
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
  backgroundColor: primaryColor,
        
      ),





    );
  }
}