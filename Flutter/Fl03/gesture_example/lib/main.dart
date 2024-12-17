import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestureDetector Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('GestureDetector Example')),
        body: Column(
          children: [
            GestureDetector(
              child: Image.network('https://images.pexels.com/photos/38242/pexels-photo-38242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              onTap: () {
                print('image clicked...');
              },
              onVerticalDragStart: (DragStartDetails details) {
                print('Vertical drag start: ${details.globalPosition.dx}, ${details.globalPosition.dy}');
              },
              
            ),
            ElevatedButton(
              onPressed: () {
                print("Elevated Clicked");
              }, 
              child: Text('Click me'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black))  
            )
          ],
        )
      )
    );
  }
}