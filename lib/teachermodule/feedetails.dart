// import 'package:flutter/material.dart';

// class Feedetails extends StatefulWidget {
//   const Feedetails({super.key});

//   @override
//   State<Feedetails> createState() => _FeedetailsState();
// }

// class _FeedetailsState extends State<Feedetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Column(
//         children: [
          
//           Container(
//             margin: EdgeInsets.only(top: 50),
//             child: Row(
//               children: [
//                 Icon(Icons.arrow_back),
//                 SizedBox(width: 30,),
//                 Container(
//                   height: 50,
//             width: 330,
//             // color: Colors.amber,
//                   child: TextField(
//                     decoration: InputDecoration(
//                   labelText: "Search by Name",
//                   border: OutlineInputBorder(),  ),
                    
//                   ),
//                 ),
//               ],
//             ),
//           ),
//          SizedBox(height: 20,),
//           Text('students in class'),
//           SizedBox(height: 20,),
//           Container(
//             height: 60,
//             width: double.infinity,
//             color: Colors.grey,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Row(children: [
//                 Text('Name'),
//                 SizedBox(width: 210,),
//                 Text('Roll Numbers')
                
//               ],),
//             ),
//           ),SizedBox(height: 50,),
//           Container(
//             padding: EdgeInsets.all(10),
//             height: 60,
//             width: double.infinity,
//             color: const Color.fromARGB(99, 88, 180, 255),
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage('assets/avator.png'),
//                 ),SizedBox(width: 19,),
//                 Text('More Adesh'),
//                 SizedBox(width: 160,),
//                  Text('R001')
//               ],
//             ),

//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter_projects/teachermodule/addfee.dart';
import 'package:flutter_projects/teachermodule/feerecord.dart';
import 'package:flutter/material.dart';

class Feedetails extends StatefulWidget {
  const Feedetails({super.key});

  @override
  State<Feedetails> createState() => _FeedetailsState();
}

class _FeedetailsState extends State<Feedetails> {
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          // title: const Text(
          //   'Select an Option',
          //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(Icons.receipt,size: 25,),
                ),
                label: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('   Fees Record  ',style: TextStyle(fontSize: 17),),
                ),
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Feerecord()),
                      );
                },
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(Icons.notification_important,size: 25,),
                ),
                label: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Send Fee Reminder',style: TextStyle(fontSize: 17),),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Addfee()),
                      );
                },
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add,size: 25,),
                ),
                label: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text('Add Fee Details',style: TextStyle(fontSize: 16),),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Addfee()),
                      );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,size: 30,)),
                ),
                SizedBox(width: 9),
                Container(
                  height: 45,
                  width: 310,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search by Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text('Students in class',style: TextStyle(fontSize: 17),),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text('Name',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  SizedBox(width: 200),
                  Text('Roll Numbers',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          GestureDetector(
            onTap: () => _showPopup(context),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              color: const Color.fromARGB(99, 88, 180, 255),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avator.png'),
                  ),
                  SizedBox(width: 19),
                  Text('More Adesh',style: TextStyle(fontSize: 17),),
                  SizedBox(width: 160),
                  Text('R001',style: TextStyle(fontSize: 17),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
