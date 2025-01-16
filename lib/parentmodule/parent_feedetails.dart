import 'package:flutter/material.dart';

class ParentFeedetails extends StatefulWidget {
  const ParentFeedetails({super.key});

  @override
  State<ParentFeedetails> createState() => _ParentFeedetailsState();
}

class _ParentFeedetailsState extends State<ParentFeedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: 
      AppBar(
        title: Text('Fee Details',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
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
          backgroundColor: Colors.blue,
        
      ),
    );
  }
}