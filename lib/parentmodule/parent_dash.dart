import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/parentmodule//parent_dashboard.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_projects/parentmodule/parent_profil.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ParentDashboard(),
    );
  }
}

class ParentDashboard extends StatelessWidget {
  const ParentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60, left: 20, bottom: 26, right: 25),
              color: primaryColor,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/parentslogo.png'),
                     ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello,\nPawar Pratiksha!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: const Text('Home'),
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Profile()),
                    //   );
                    // },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: const Text('About School'),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Fixed Header
          Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                padding: const EdgeInsets.only(top: 40, right: 25, left: 25, bottom: 25),
                color: primaryColor,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/parentslogo.png'),
                      ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi Pawar Pratiksha',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'PH.No:1234567890',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Address: Tambhere',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Static "Please Select your Child" message
          Container(
            height: 46,
            width: 310,
          
            foregroundDecoration: ShapeDecoration(shape: 
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
              ,
              
            )),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Please select your child',
              style: TextStyle(fontSize: 16, ),
            ),
          ),
          const SizedBox(height: 7),
          // Scrollable ListView
          Expanded(
            child: ListView(
              children: [
                childCard(context, 'Pawar Monika', '10', 'A', 'R002'),
                childCard(context, 'More Adesh', '10', 'B', 'R002'),
                childCard(context, 'Pawar Monika', '10', 'A', 'R002'),
                childCard(context, 'More Adesh', '10', 'B', 'R002'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget childCard(BuildContext context, String name, String className, String division, String rollNo) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: $name', style: const TextStyle(fontSize: 15)),
              const SizedBox(height: 8),
              Text('Class: $className', style: const TextStyle(fontSize: 15)),
              const SizedBox(height: 8),
              Text('Division: $division', style: const TextStyle(fontSize: 15)),
              const SizedBox(height: 8),
              Text('Roll Number: $rollNo', style: const TextStyle(fontSize: 15)),
            ],
          ),
        ),
      ),
    );
  }
}
