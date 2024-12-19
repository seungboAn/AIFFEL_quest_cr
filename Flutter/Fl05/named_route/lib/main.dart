import 'package:flutter/material.dart';
import 'dart:convert'; // JSON 변환을 위해 import

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes with JSON Arguments Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Create a JSON object
            Map<String, dynamic> data = {
              'title': 'Hello from the First Screen!',
              'description': 'This is a message passed as JSON.',
            };

            // Navigate to the second screen and pass the JSON as arguments
            Navigator.pushNamed(
              context,
              '/second',
              arguments: jsonEncode(data), // Convert to JSON string
            );
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments passed from the FirstScreen and decode the JSON
    final String jsonString = ModalRoute.of(context)!.settings.arguments as String;
    final Map<String, dynamic> data = jsonDecode(jsonString); // Decode JSON string

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data['title']), // Display the title from JSON
            SizedBox(height: 10),
            Text(data['description']), // Display the description from JSON
            ElevatedButton(
              onPressed: () {
                // Navigate back to the first screen
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}