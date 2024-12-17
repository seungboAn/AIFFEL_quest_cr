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
      home: const MyHomePage(title: 'Test'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
        // Row example code
        // Row(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.red
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.blue
        //     ),
        //   ],
        // ),

        // Column example code
        // Column(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.red
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.blue
        //     ),
        //   ],
        // ),

        // Layout nesting
        // Column(
        //   children: [
        //     Row(
        //       children: [
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.red
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.blue
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.green
        //         ),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.green
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.black
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.pink
        //         ),
        //       ],
        //     )
        //   ],
        // ),
        
        // MainAxisAlignment
        // Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         Container(
        //           width: 50,
        //           height: 50,
        //           color: Colors.red
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.blue
        //         ),
        //         Container(
        //           width: 150,
        //           height: 150,
        //           color: Colors.green
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.green
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.black
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.pink
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.green
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.black
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.pink
        //         ),
        //       ],
        //     )
        //   ],
        // ),

        // CrossAxisAlignment
        // Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           width: 50,
        //           height: 50,
        //           color: Colors.red
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.blue
        //         ),
        //         Container(
        //           width: 150,
        //           height: 150,
        //           color: Colors.green
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //       children: [
        //         Container(
        //           width: 50,
        //           height: 50,
        //           color: Colors.green
        //         ),
        //         Container(
        //           width: 75,
        //           height: 75,
        //           color: Colors.black
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.pink
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.green
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.black
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.pink
        //         ),
        //       ],
        //     )
        //   ],
        // ),

        // Align
        // Align(
        //   alignment: Alignment.topRight,
        //   child: Container(
        //     color: Colors.red,
        //     width: 100,
        //     height: 100,
        //   )
        // ),
        
        // Stack + Align
        // Stack(
        //   children: [
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Align(
        //       alignment: Alignment.center,
        //       child: Container(
        //         width: 300,
        //         height: 300,
        //         color: Colors.black,
        //       )
        //     ),
        //     Align(
        //       alignment: Alignment.bottomRight,
        //       child: Container(
        //         width: 150,
        //         height: 150,
        //         color: Colors.blue,
        //       )
        //     )
        //   ],
        // ),

        // Stack + Positioned
        Stack(
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
              width: 300,
              height: 300,
            ),
            Positioned(
              right: 50,
              top: 50,
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            )
          ],
        )
    );
  }
}
