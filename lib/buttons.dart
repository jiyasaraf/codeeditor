import 'package:flutter/material.dart'; //provieds basic building blocks for UI
void main() { //entry point
  runApp(const CodeEditorApp()); //instance of app and run in flutter
}

class CodeEditorApp extends StatelessWidget { //immutable state widget
  const CodeEditorApp(); //const : widget can be created at compile time and not change in runtime

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Editor',
      home: Scaffold( ///basic layout structure by scaffold
        drawer: Drawer(
          child: ListView( //for displaying the drawer items
            padding: EdgeInsets.zero, //0 padding on all sides means empty space around widgets
            children: [ //inside drawer
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  },
              ),
            ],
          ),
        ),
        appBar: AppBar( //tittle of app
          title: const Text('Welcome to Code Editor'),
        ),
        body: Row( //context property of scaffold : body , row: row widget call constructor
          children: [ //child widget alligns horizontally byrow
            ElevatedButton(
              onPressed: () {
                // Handle file button press here
              },
              child: const Text('File'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle edit button press here
              },
              child: const Text('Edit'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle code button press here
              },
              child: const Text('Code'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle run button press here
              },
              child: const Text('Run'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}