import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'good';
    } else if (resultScore <= 12) {
      resultText = 'very good';
    } else if (resultScore <= 16) {
      resultText = 'bad';
    } else {
      resultText = 'ganda bc';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz',),
            style: TextButton.styleFrom(
              primary: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
