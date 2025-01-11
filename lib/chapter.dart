import 'package:flutter/material.dart';

class Chapter extends StatelessWidget {
  final List<String> chapters; // A list of chapters passed from Syllabus screen

  const Chapter({super.key, required this.chapters});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Chapters', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                decoration: BoxDecoration(
                 
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    )
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0), // No padding in ListTile
                     title: Text(
                      "${index + 1}. ${chapters[index]}",  // Adding number before chapter
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      // Navigate to the specific chapter details (optional)
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ChapterDetails()));
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
