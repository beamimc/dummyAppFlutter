import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}
//void main() => runApp(MyApp()); //equivalent

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override // decorator
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color',
        'answers': ['Black', 'Red', 'Green', 'white'],
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favourite sport',
        'answers': ['Tennis', 'Ski', 'Basketball', 'Rugby'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi first App'),
        ),
        body: Column(
          children: [
            Question(
              (questions[_questionIndex]['questionText'] as String),
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    ); //scaffold= basic main design
  }
}
