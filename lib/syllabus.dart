import 'package:flutter/material.dart';
import 'package:flutter_projects/chapter.dart';
import 'package:flutter_projects/main.dart';

class Syllabus extends StatefulWidget {
  const Syllabus({super.key});

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: primaryColor
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
                  child: Text('Syllabus',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
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
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>Chapter()));
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
                     Navigator.push(context, MaterialPageRoute(builder:(context)=>Chapter()));
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
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>Chapter()));
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
                     Navigator.push(context, MaterialPageRoute(builder:(context)=>Chapter()));
                    
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>Chapter()));
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
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Chapter()));
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

// import 'package:flutter/material.dart';
// import 'package:flutter_projects/chapter.dart'; // Importing Chapter screen

// class Syllabus extends StatefulWidget {
//   const Syllabus({super.key});

//   @override
//   State<Syllabus> createState() => _SyllabusState();
// }

// class _SyllabusState extends State<Syllabus> {
//   // List of subjects with their chapters
//   List<Map<String, dynamic>> subjects = [
//     {
//       'name': 'Mathematics',
//       'chapters': ['Algebra', 'Calculus', 'Geometry'],
//       'image': 'assets/images/mathematics.png',
//       'color': const Color.fromARGB(255, 187, 244, 217), // Custom color for this subject
//     },
//     {
//       'name': 'English',
//       'chapters': ['Grammar', 'Literature', 'Composition'],
//       'image': 'assets/images/englishs.png',
//       'color': const Color.fromARGB(255, 253, 229, 198), // Custom color for this subject
//     },
//     {
//       'name': 'Sport',
//       'chapters': ['Football', 'Basketball', 'Cricket'],
//       'image': 'assets/images/sport.png',
//       'color': const Color.fromARGB(255, 206, 222, 251), // Custom color for this subject
//     },
//     {
//       'name': 'Marathi',
//       'chapters': ['Grammar', 'Literature'],
//       'image': 'assets/images/marathis.png',
//       'color': const Color.fromARGB(255, 240, 199, 213), // Custom color for this subject
//     },
//     {
//       'name': 'Science',
//       'chapters': ['Physics', 'Chemistry', 'Biology'],
//       'image': 'assets/images/sciences.png',
//       'color': const Color.fromARGB(255, 246, 246, 175), // Custom color for this subject
//     },
//     {
//       'name': 'Art',
//       'chapters': ['Drawing', 'Painting', 'Sculpture'],
//       'image': 'assets/images/art.png',
//       'color': const Color.fromARGB(255, 235, 205, 241), // Custom color for this subject
//     },
//     {
//       'name': 'Homework',
//       'chapters': ['Math Homework', 'Science Homework'],
//       'image': 'assets/images/homework.png',
//       'color': const Color.fromARGB(255, 194, 233, 233), // Custom color for this subject
//     },
//     {
//       'name': 'Syllabus',
//       'chapters': ['Mathematics Syllabus', 'English Syllabus'],
//       'image': 'assets/images/syllabus.png',
//       'color': const Color.fromARGB(255, 211, 247, 238), // Custom color for this subject
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 100,
//             decoration: BoxDecoration(color: Colors.blue),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 20),
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
//                   ),
//                 ),
//                 SizedBox(width: 70),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 25),
//                   child: Text(
//                     'Syllabus',
//                     style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: List.generate((subjects.length / 2).ceil(), (index) {
//                   int firstIndex = index * 2;
//                   int secondIndex = firstIndex + 1;

//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       // First container in the row
//                       subjectCard(subjects[firstIndex]),
//                       // Second container in the row (if available)
//                       if (secondIndex < subjects.length)
//                         subjectCard(subjects[secondIndex]),
//                     ],
//                   );
//                 }),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget subjectCard(Map<String, dynamic> subject) {
//     return Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: InkWell(
//         onTap: () {
//           // When a subject is tapped, pass the chapters list to the Chapter screen
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Chapter(chapters: subject['chapters']),
//             ),
//           );
//         },
//         child: Container(
//           height: 120, // Adjust the height of each card
//           width: MediaQuery.of(context).size.width * 0.46, // Adjust the width for better layout
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             color: subject['color'],
//           ),
//           child: Row(
//             children: [
//                Expanded(
//                 child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 50),
//                     child: Text(
//                       subject['name'],
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 10), // Add some space before the image and text
//               Image.asset(subject['image'], height: 62),
//               SizedBox(width: 10), // Add some space after the image
             
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
