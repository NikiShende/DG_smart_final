import 'package:flutter/material.dart';

class Addfee extends StatefulWidget {
  const Addfee({super.key});

  @override
  State<Addfee> createState() => _AddfeeState();
}

class _AddfeeState extends State<Addfee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('Add Fee Details',style: TextStyle(fontWeight: FontWeight.bold),),

      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Text('Please enter amount                             ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.all(19),
              child: TextField(
                
                decoration: InputDecoration(
                  labelText: 'Enter Amount',
              
                  border: OutlineInputBorder()
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
             child:Text('Add Amount',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}