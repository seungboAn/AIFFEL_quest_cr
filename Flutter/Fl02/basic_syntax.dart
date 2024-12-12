// Library import
import 'dart:math';

// 외부 패키지의 라이브러리 import
// import 'package:test/test.dart';

// 파일 import
// import 'path/to/my_other_file.dart';


void main() {
    // Variable
    var name = 'Voyager I';
    var age = 12;
    // name = 1;
    
    print(name);

    // Condition
    if (20 <= age && age < 30 ) {
        print('성인');
    } else if (30 <= age && age <= 40) {
        print('중년');
    } else {
        print('청소년');
    }

    // For loop
    for (int month = 1; month <= 12; month++) {
        print(month);
    }

    // while loop
    var year = 2000;
    while (year < 2010) {
        year += 1;
        print(year);
    }

    // Function
    String helloWorld(String name) {
        return name + ' hello World';
    }
    var msg = helloWorld('James');
    print(msg);

    // Arrow function
    // 단일 표현식을 가지는 함수를 구현할 때 유용함.
    // flybyObjects.where((name) => name.contains('turn')).forEach(print);

    
    var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
    voyager.describe();

    var voyager3 = Spacecraft.unlaunched('Voyager III');
    voyager3.describe();
}

// class
class Spacecraft {
    String name;
    DateTime? launchDate;

    // Read-only non-final 프로퍼티
    int? get launchYear => launchDate?.year;

    // 멤버 할당에 신택틱 슈가를 사용한 생성자
    Spacecraft(this.name, this.launchDate) {
        // 여기에 초기화 코드가 이어집니다.
    }

    // 디폴트 생성자로 포워드하는 Named 생성자.
    Spacecraft.unlaunched(String name) : this(name, null);

    // 메서드.
    void describe() {
        print('Spacecraft: $name');
        // Getter에는 타입 프로모션이 작동하지 않습니다.
        var launchDate = this.launchDate;
        if (launchDate != null) {
        int years = DateTime.now().difference(launchDate).inDays ~/ 365;
        print('Launched: $launchYear ($years years ago)');
        } else {
        print('Unlaunched');
        }
    }
}