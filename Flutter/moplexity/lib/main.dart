import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moplexity',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Discover'),
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
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.favorite_border),
            Text(widget.title),
            const Icon(Icons.headphones),
          ],
        )
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    color: Color(0xFF3F3832),
                    elevation: 4,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1636581563868-d5322a0360f7?q=80&w=1401&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text('1. The Allure of Snowboarding: The King of Winter Sports', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('Snowboarding is one of the most popular winter sports worldwide, attracting countless enthusiasts to experience the thrill on snow-covered slopes each year. The allure of snowboarding goes beyond just speed and technical skills', style: const TextStyle(color: Colors.white54)),
                          SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage('https://private-avatars.githubusercontent.com/u/186035048?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MzQ0OTQzNDAsIm5iZiI6MTczNDQ5MzE0MCwicGF0aCI6Ii91LzE4NjAzNTA0OCJ9.kBBoJNojUg5XXoppZNsIm_vcIBJo2DD3zz9SUOAydN4&v=4'),
                                    radius: 12,
                                  ),
                                  SizedBox(width: 8),
                                  Text('James', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70)),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.bookmark_border, color: Colors.white70, size: 16,),
                                  SizedBox(width: 16),
                                  Icon(Icons.headphones, color: Colors.white70, size: 16),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xFF3F3832),
                    elevation: 4,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1636581563868-d5322a0360f7?q=80&w=1401&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text('1. The Allure of Snowboarding: The King of Winter Sports', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('Snowboarding is one of the most popular winter sports worldwide, attracting countless enthusiasts to experience the thrill on snow-covered slopes each year. The allure of snowboarding goes beyond just speed and technical skills', style: const TextStyle(color: Colors.white54)),
                          SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage('https://private-avatars.githubusercontent.com/u/186035048?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MzQ0OTQzNDAsIm5iZiI6MTczNDQ5MzE0MCwicGF0aCI6Ii91LzE4NjAzNTA0OCJ9.kBBoJNojUg5XXoppZNsIm_vcIBJo2DD3zz9SUOAydN4&v=4'),
                                    radius: 12,
                                  ),
                                  SizedBox(width: 8),
                                  Text('James', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70)),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.bookmark_border, color: Colors.white70, size: 16,),
                                  SizedBox(width: 16),
                                  Icon(Icons.headphones, color: Colors.white70, size: 16),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Wrap(
              spacing: 4,
              children: [
                Chip(label: Text('Finance')),
                Chip(label: Text('Art & Culture')),
                Chip(label: Text('Sports')),
                Chip(label: Text('Entertainment')),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: '',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.blue[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
