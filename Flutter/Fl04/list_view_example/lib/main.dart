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
      home: const MyHomePage(title: 'Todo List'),
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
  final Map<String, String> entries = {
    '할 일 1: 장보기': '마트에서 필요한 식료품을 구매하기',
    '할 일 2: 운동하기': '헬스장에서 1시간 운동하기',
    '할 일 3: 청소하기': '집안 청소 및 정리하기',
    '할 일 4: 공부하기': 'Flutter 관련 자료 공부하기',
    '할 일 5: 친구 만나기': '오랜만에 친구와 점심 먹기',
    '할 일 6: 책 읽기': '읽고 싶은 책 한 권 읽기',
    '할 일 7: 요리하기': '새로운 레시피로 저녁 요리하기',
    '할 일 8: 영화 보기': '주말에 보고 싶은 영화 감상하기',
    '할 일 9: 프로젝트 작업하기': '현재 진행 중인 프로젝트 작업하기',
    '할 일 10: 저녁 준비하기': '가족과 함께 저녁 준비하기'
  };

  final List<bool> checkedStates = List<bool>.filled(10, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  String key = entries.keys.elementAt(index);

                  return Container(
                    height: 50,
                    child: Row(
                      children: [
                        Checkbox(
                          value: checkedStates[index], // isChecked는 bool 타입의 상태 변수
                          onChanged: (bool? value) {
                            setState(() {
                              checkedStates[index] = value ?? false; // null 체크 후 기본값 설정
                            });
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            // 탭한 항목의 세부 정보를 콘솔에 출력
                            print('$key에 대한 내용은 다음과 같습니다.\n${entries[key]}');
                          },
                          child: Text(key),
                        ),
                      ],
                    )
                  );
                }
              ),
         
        ),
      );
  }
}
