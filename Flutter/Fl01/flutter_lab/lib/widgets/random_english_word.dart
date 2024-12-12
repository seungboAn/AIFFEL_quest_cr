import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// // Statelesswidget
// class RandomEnglishWord extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     final wordPair = WordPair.random();
//     return Text(
//       'English word is: ${wordPair.first}',
//     );
//   }
// }

// StatefulWidget
class RandomEnglishWord extends StatefulWidget {
  @override
  _RandomEnglishWordState createState() => _RandomEnglishWordState();
}

class _RandomEnglishWordState extends State<RandomEnglishWord> {
  late WordPair wordPair;

  @override
  void initState() {
    super.initState();
    wordPair = WordPair.random();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'English word is: ${wordPair.first}',
    );
  }
}