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
      home: const MyHomePage(title: 'Grid View'),
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
      body: Center(
        child: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network('https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/4242199407043055-5f0caf4a-080a-46dd-87c6-9df5e7934d91.png', width: 100, height: 75,), // 상품 이미지
                  SizedBox(height: 8), // 이미지와 텍스트 사이의 간격
                  Text(
                    '레노버 아이디어패드 슬림 3 14 코어i5 인텔 12세대',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2), // 상품명과 가격 사이의 간격
                  Text(
                    '773,970원',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough, // 취소선 추가
                    ),
                  ),
                  SizedBox(height: 2), // 가격과 할인 가격 사이의 간격
                  Text(
                    '594,000원',
                    style: TextStyle(fontSize: 10, color: Colors.red), // 할인된 가격 (빨강)
                  ),
                  SizedBox(height: 2), // 도착 예정 날짜와 다음 텍스트 사이의 간격
                  Text(
                    '내일(수) 도착', // 도착 예정 날짜 (초록)
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ), // 도착 예정 날짜 (초록)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network('https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/3063060842846084-8d821b27-a9b3-4077-88d0-984a880fa3a0.jpg', width: 100, height: 75,), // 상품 이미지
                  SizedBox(height: 8), // 이미지와 텍스트 사이의 간격
                  Text(
                    'LG전자 2024 그램 15 코어 울트라5 인텔 Iris',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2), // 상품명과 가격 사이의 간격
                  Text(
                    '2,100,000원',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough, // 취소선 추가
                    ),
                  ),
                  SizedBox(height: 2), // 가격과 할인 가격 사이의 간격
                  Text(
                    '1,700,000원',
                    style: TextStyle(fontSize: 10, color: Colors.red), // 할인된 가격 (빨강)
                  ),
                  SizedBox(height: 2), // 도착 예정 날짜와 다음 텍스트 사이의 간격
                  Text(
                    '내일(수) 도착', // 도착 예정 날짜 (초록)
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ), // 도착 예정 날짜 (초록)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network('https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/1025_amir_coupang_oct_80k/f596/ef572b53c4cd1cfcd505fac7dfcd782a3eb82f610b351396f949b7883878.jpg', width: 100, height: 75,), // 상품 이미지
                  SizedBox(height: 8), // 이미지와 텍스트 사이의 간격
                  Text(
                    '에이수스 2024 비보북 Go 15.6 라이젠5 라이젠 7000 시리즈',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2), // 상품명과 가격 사이의 간격
                  // Text(
                  //   '773,970원',
                  //   style: TextStyle(
                  //     fontSize: 10,
                  //     color: Colors.grey,
                  //     decoration: TextDecoration.lineThrough, // 취소선 추가
                  //   ),
                  // ),
                  SizedBox(height: 2), // 가격과 할인 가격 사이의 간격
                  Text(
                    '579,000원',
                    style: TextStyle(fontSize: 10, color: Colors.red), // 할인된 가격 (빨강)
                  ),
                  SizedBox(height: 2), // 도착 예정 날짜와 다음 텍스트 사이의 간격
                  Text(
                    '내일(수) 도착', // 도착 예정 날짜 (초록)
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ), // 도착 예정 날짜 (초록)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network('https://thumbnail7.coupangcdn.com/thumbnails/remote/230x230ex/image/1025_amir_coupang_oct_80k/6c57/8923f320fc0d4d4beb1555ac6d55b4177994d1d54bb0ad85414f7a11b1a2.jpg', width: 100, height: 75,), // 상품 이미지
                  SizedBox(height: 8), // 이미지와 텍스트 사이의 간격
                  Text(
                    '베이직스 2024 베이직북14 3세대 인텔 셀러론 N5100',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2), // 상품명과 가격 사이의 간격
                  Text(
                    '398,600원',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough, // 취소선 추가
                    ),
                  ),
                  SizedBox(height: 2), // 가격과 할인 가격 사이의 간격
                  Text(
                    '367,600원',
                    style: TextStyle(fontSize: 10, color: Colors.red), // 할인된 가격 (빨강)
                  ),
                  SizedBox(height: 2), // 도착 예정 날짜와 다음 텍스트 사이의 간격
                  Text(
                    '내일(수) 도착', // 도착 예정 날짜 (초록)
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ), // 도착 예정 날짜 (초록)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network('https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/49182423483328-9d15080d-9db2-4225-b686-52f18eb0eff2.jpg', width: 100, height: 75,), // 상품 이미지
                  SizedBox(height: 8), // 이미지와 텍스트 사이의 간격
                  Text(
                    '레노버 2022 아이디어패드 슬림 1 15AMN7',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2), // 상품명과 가격 사이의 간격
                  // Text(
                  //   '773,970원',
                  //   style: TextStyle(
                  //     fontSize: 10,
                  //     color: Colors.grey,
                  //     decoration: TextDecoration.lineThrough, // 취소선 추가
                  //   ),
                  // ),
                  SizedBox(height: 2), // 가격과 할인 가격 사이의 간격
                  Text(
                    '599,000원',
                    style: TextStyle(fontSize: 10, color: Colors.red), // 할인된 가격 (빨강)
                  ),
                  SizedBox(height: 2), // 도착 예정 날짜와 다음 텍스트 사이의 간격
                  Text(
                    '내일(수) 도착', // 도착 예정 날짜 (초록)
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ), // 도착 예정 날짜 (초록)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network('https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/459e/23b3c99415f6485bb1f396ceb6493691f33bfe5f80761de5d5b5d2ac4203.jpg', width: 100, height: 75,), // 상품 이미지
                  SizedBox(height: 8), // 이미지와 텍스트 사이의 간격
                  Text(
                    '레노버 2024 아이디어패드 슬림 3 15ABR8',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2), // 상품명과 가격 사이의 간격
                  // Text(
                  //   '773,970원',
                  //   style: TextStyle(
                  //     fontSize: 10,
                  //     color: Colors.grey,
                  //     decoration: TextDecoration.lineThrough, // 취소선 추가
                  //   ),
                  // ),
                  SizedBox(height: 2), // 가격과 할인 가격 사이의 간격
                  Text(
                    '629,000원',
                    style: TextStyle(fontSize: 10, color: Colors.red), // 할인된 가격 (빨강)
                  ),
                  SizedBox(height: 2), // 도착 예정 날짜와 다음 텍스트 사이의 간격
                  Text(
                    '내일(수) 도착', // 도착 예정 날짜 (초록)
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ), // 도착 예정 날짜 (초록)
                ],
              ),
            ),
            
            
          ],
        )
      ),
    );
  }
}
