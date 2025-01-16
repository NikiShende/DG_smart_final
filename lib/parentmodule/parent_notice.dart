import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

class ParentNotice extends StatefulWidget {
  const ParentNotice({super.key});

  @override
  State<ParentNotice> createState() => _ParentNoticeState();
}

class _ParentNoticeState extends State<ParentNotice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: primaryColor,
        title: Text(' Notice',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,

        leading: IconButton(onPressed: (){
          Navigator.pop(context);
          
        }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 29,)),
      ),
    );
  }
}