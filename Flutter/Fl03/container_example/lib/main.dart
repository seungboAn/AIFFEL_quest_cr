import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container and Center Example',
      home: Scaffold(
        appBar: AppBar(title: Text('Container and Center Example')),
        body: Center(
          child: Container(
            width: 300, // 컨테이너 너비
            height: 150, // 컨테이너 높이
            margin: EdgeInsets.all(20), // 외부 여백
            padding: EdgeInsets.all(20), // 내부 여백
            decoration: BoxDecoration(
              color: Colors.blueAccent, // 배경색
              borderRadius: BorderRadius.circular(25), // 둥근 모서리
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 15), // 그림자 위치
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Hello, Flutter!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}