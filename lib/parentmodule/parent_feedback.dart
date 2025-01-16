import 'package:flutter/material.dart';

class ParentFeedback extends StatefulWidget {
  const ParentFeedback({super.key});

  @override
  State<ParentFeedback> createState() => _ParentFeedbackstate();
}

class _ParentFeedbackstate extends State<ParentFeedback> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Text('Feedback',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Teacher Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    )
                    ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 46,
                  width: 310,
                  child: TextField(
                    
                    
                    decoration: InputDecoration(
                      hintText: 'Enter name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
        
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Your Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    )
                    ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 46,
                  width:310,
                  child: TextField(
                    
                    
                    decoration: InputDecoration(
                      hintText: 'Enter name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                  SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Subject',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    )
                    ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 46,
                  width: 310,
                  child: TextField(
                    
                    
                    decoration: InputDecoration(
                      hintText: 'Enter subject',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                  SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Detailed Explaination',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    )
                    ],
                ),
                SizedBox(height: 10,),
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 100,
                  width: 310,
                  
                  child: TextField(
                  
                    controller: _controller,
                  
                    decoration: InputDecoration(
                      hintText: 'Type here ...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    expands: true,
                  ),
                ),
              ),
                SizedBox(height:20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: ElevatedButton(onPressed: (){
                      
                      }, child: Text('Submit',style: TextStyle(fontSize: 18,color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      ),
                    )
                  ],
                )
        
        
        
        
        
        
        
        
        
        
        
        
              ],
            )
          ],
        ),
      ),










    );
  }
}