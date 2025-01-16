import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Notice extends StatefulWidget {
  const Notice({super.key});

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  String? selectedFile;

  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        selectedFile = result.files.single.name; // Get the name of the file
      });
      // You can use `result.files.single.path` to get the full path
      // of the file for further operations (e.g., upload to server).
    } else {
      // User canceled the picker
      setState(() {
        selectedFile = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Notice Board',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Set your desired border radius
    ),
                backgroundColor: Colors.grey[300], // Light gray background
                foregroundColor: Colors.black, // Black icon and text
              ),
              onPressed: pickFile, // Trigger file picker on tap
              icon: const Icon(Icons.upload),
              label: const Text('Upload Notices'),
            ),
            if (selectedFile != null) ...[
              const SizedBox(height: 10),
              Text(
                'Selected File: $selectedFile',
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Type here descriptions...',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), 
    ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                
              },
              child: const Text('Submit',style: TextStyle(fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}
