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
      home: const MyHomePage(title: 'Stack + Positioned'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: Container(
                color: Colors.red,
                width: 240,
                height: 240,
              )
            ),
            Positioned(
              right: 40,
              bottom: 40,
              child: Container(
                color: Colors.black,
                width: 180,
                height: 180,
              )
            ),
            // Positioned(
            //   right: 20,
            //   bottom: 20,
            //   child: Text('Hello, Flutter', style: TextStyle(color: Colors.white))
            // )
          ],
        )
    );
  }
}
