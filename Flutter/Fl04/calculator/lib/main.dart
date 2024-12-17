import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 예상되는 문제점 : 모든 방향으로 margin을 적용하면 다른 요소에도 영향을 미칠 것이다.
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (rowIndex) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (colIndex) {
                    int buttonNumber = rowIndex * 3 + colIndex + 1;
                    return Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.all(5),
                      child: ElevatedButton(onPressed: () => {}, child: Text('$buttonNumber'), style: ElevatedButton.styleFrom(
    backgroundColor: Colors.grey,
	shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),)
                    );
                  })
                );
              }),
        )
    );
  }
}
