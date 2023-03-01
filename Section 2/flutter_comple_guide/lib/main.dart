import 'package:flutter/material.dart';
import 'package:flutter_comple_guide/quiz.dart';
import 'package:flutter_comple_guide/result.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 9},
        {'text': 'Orange', 'score': 7},
        {'text': 'Red', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 6},
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 4},
      ]
    },
    {
      'questionText': 'Who is the best football soccer player?',
      'answers': [
        {'text': 'Maradona', 'score': 9},
        {'text': 'Pele', 'score': 10},
        {'text': 'Cristiano', 'score': 7},
        {'text': 'Messi', 'score': 8},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                resetHandler: _resetQuiz,
                resultScore: _totalScore,
              ),
      ),
    );
  }
}
