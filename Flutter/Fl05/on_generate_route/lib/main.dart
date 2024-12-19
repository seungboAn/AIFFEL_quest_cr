import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Routes Demo',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        final uri = Uri.parse(settings.name!);
        if (uri.pathSegments.length == 2 && uri.pathSegments.first == 'item') {
          final id = uri.pathSegments[1];
          return MaterialPageRoute(
            builder: (context) => DetailScreen(id: id),
          );
        }
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to Item 1'),
              onPressed: () => Navigator.pushNamed(context, '/item/1'),
            ),
            ElevatedButton(
              child: Text('Go to Item 2'),
              onPressed: () => Navigator.pushNamed(context, '/item/2'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String id;

  DetailScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Item's id:  $id")),
      body: Center(child: Text('Details for item $id')),
    );
  }
}