import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result({
    super.key,
    required this.resultScore,
    required this.resetHandler,
  });

  String get resultPhrase {
    String resultText = 'You did it';

    if (resultScore <= 8) {
      resultText = 'You are bad!';
    } else if (resultScore <= 12) {
      resultText = 'You are ... Strange';
    } else if (resultScore <= 16) {
      resultText = 'You are pretty likeable!';
    } else {
      resultText = 'You are awesome!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your total score is: $resultScore\n$resultPhrase',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
