import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Todo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String username = '';
  String email = '';
  bool? isChecked = false;
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title), // 왼쪽에 제목 표시
            Row(
              children: [
                Text(light ? 'Light' : 'Night'),
                Switch(
                  value: light,
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                      print('light is: $light');
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                width: 300, // 원하는 너비로 조정
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your username',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    username = value;
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300, // 원하는 너비로 조정
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                ),
              ),
              SizedBox(height: 16), // TextField와 버튼 사이의 수직 간격
              ElevatedButton(
                onPressed: () {
                  print('Username: $username\n Email: $email');
                  // 버튼 클릭 시 실행할 로직
                },
                child: Text('Submit'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                        print('알림 받기 is: $isChecked');
                      });
                    },
                  ),
                  Text('알림 받기')
                ],
              ),
              
          ]
        ),
      ),
    );
  }
}
