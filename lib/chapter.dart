import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

class Chapter extends StatefulWidget {
  const Chapter({super.key});

  @override
  State<Chapter> createState() => _ChapterState();
}

class _ChapterState extends State<Chapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(toolbarHeight: 70,
        title: Text('Chapter',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
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

      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            
            child: Container(
              
              // height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.grey,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      
                      Container(
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 218, 223, 225),
                        ),
                        child: Center(child: Text('1',style: TextStyle(fontSize: 18),)),
                              
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 218, 223, 225),
                        ),
                        child: Center(child: Text('Algebra ', style: TextStyle(fontSize: 18,color: Colors.black),)),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                    Row(
                    children: [
                      
                      Container(
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 218, 223, 225),
                        ),
                        child: Center(child: Text('2',style: TextStyle(fontSize: 18),)),
                              
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 35,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                           color: const Color.fromARGB(255, 218, 223, 225),
                        ),
                        child: Center(child: Text('Geometry ', style: TextStyle(fontSize: 18,),)),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                    Row(
                    children: [
                      
                      Container(
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 218, 223, 225),
                        ),
                        child: Center(child: Text('3',style: TextStyle(fontSize: 18),)),
                              
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                           color: const Color.fromARGB(255, 218, 223, 225),
                        ),
                        child: Center(child: Text('Calculus ', style: TextStyle(fontSize: 18,),)),
                      )
                    ],
                  ),
                ],
              ),
            





            ),
          ),



        ],
      )








    );
  }
}