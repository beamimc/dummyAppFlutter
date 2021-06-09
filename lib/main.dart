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
      'What\'s your favourite color',
      'What\'s your favourite animal'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi first App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            // ignore: deprecated_member_use
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    ); //scaffold= basic main design
  }
}
