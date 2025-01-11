import 'package:flutter/material.dart';
import 'package:flutter_projects/student_homework.dart';

class Homework extends StatefulWidget {
  const Homework({super.key});

  @override
  State<Homework> createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white,size: 30,)),
                
                ),
                SizedBox(width: 70,),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text('Homework',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),






             SizedBox(height: 25,),

          Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: InkWell(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>StudentHomework()));
                      },
                       child: Container(
                                       height: 120,
                                       width: 169,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(8),
                                         color: const Color.fromARGB(255, 127, 225, 143),
                                        
                                       ),
                                       child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('Mathematics',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 1,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Image.asset('assets/images/mathematics.png',height: 72,),
                                          ),
                                           
                                        ],
                                       ),
                                     ),
                     ),
                   ),
              // SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder:(context)=>StudentHomework()));
                  },
                  child: Container(
                    height: 120,
                    width: 169,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 236, 203, 141),
                     
                    ),
                    child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('English',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Image.asset('assets/images/englishs.png',height: 72,),
                                          ),
                                           
                                        ],
                                       ),
                  
                  ),
                ),
              ),


                ],
              ),
              SizedBox(height: 2,),




              Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: InkWell(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>StudentHomework()));
                      },
                       child: Container(
                                       height: 120,
                                       width: 169,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(8),
                                         color: const Color.fromARGB(255, 146, 165, 240),
                                        
                                       ),
                                       child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 9),
                                            child: Text('Sport',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 5,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Image.asset('assets/images/sport.png',height: 72,),
                                          ),
                                           
                                        ],
                                       ),
                                     ),
                     ),
                   ),
              // SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder:(context)=>StudentHomework()));
                    
                  },
                  child: Container(
                    height: 120,
                    width: 169,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 212, 165, 231),
                     
                    ),
                    child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('Marathi',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Image.asset('assets/images/marathis.png',height: 72,),
                                          ),
                                           
                                        ],
                                       ),
                  
                  ),
                ),
              ),


                ],
              ),
              SizedBox(height: 2,),

               Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>StudentHomework()));
                      },
                       child: Container(
                                       height: 120,
                                       width: 169,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(8),
                                         color: const Color.fromARGB(255, 249, 232, 132),
                                        
                                       ),
                                       child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('Science',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 5,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Image.asset('assets/images/sciences.png',height: 72,),
                                          ),
                                           
                                        ],
                                       ),
                                     ),
                     ),
                   ),
              // SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>StudentHomework()));
                  },
                  child: Container(
                    height: 120,
                    width: 169,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 244, 147, 231),
                     
                    ),
                    child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 9),
                                            child: Text('Art',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Image.asset('assets/images/art.png',height: 72,),
                                          ),
                                           
                                        ],
                                       ),
                  
                  ),
                ),
              ),


                ],
              ),
              SizedBox(height: 2,),

             Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Container(
                                     height: 120,
                                     width: 169,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(8),
                                       color: const Color.fromARGB(255, 189, 235, 166),
                                      
                                     ),
                                     child:  Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 50,left: 5),
                                          child: Text('Homework',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ),
                                        SizedBox(width: 5,),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 30),
                                          child: Image.asset('assets/images/homework.png',height: 72,),
                                        ),
                                         
                                      ],
                                     ),
                                   ),
                   ),
              // SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 120,
                  width: 169,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 164, 224, 235),
                   
                  ),
                  child:  Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 50,left: 5),
                                          child: Text('Syllabus',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ),
                                        SizedBox(width: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 32),
                                          child: Image.asset('assets/images/syllabus.png',height: 72,),
                                        ),
                                         
                                      ],
                                     ),
                
                ),
              ),


                ],
              ),















        ],
      ) ,

    );
  }
}