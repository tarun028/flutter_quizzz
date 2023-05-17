import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [{'text':'Black','score':4}, {'text':'white','score':3}, {'text':'Blue','score':2}, {'text':'green','score':1}],
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [{'text':'dog','score':4}, {'text':'cat','score':1}, {'text':'pussy','score':2}, {'text':'Black','score':4}],
    },
    {
      'questionText': 'what\'s your favourite person?',
      'answers': [{'text':'sukriti','score':4}, {'text':'sukriti','score':3}, {'text':'sukriti','score':3}, {'text':'sukriti','score':1}],
    },
  ];

  int _questionIndex = 0;
  int _totalScore=0;


  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore=0;
    });
    
  }

  void _answerQuestion(int score) {
    //_totalScore=_totalScore+1;
    _totalScore+=score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _question.length) {
      print('We have more question');
    } else {
      print('no question');
    }

    print('Answer kardis');
  }

  @override
  Widget build(BuildContext context) {
    //map :key value pair

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _question.length
            ? quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _question,
              )
            :  result(_totalScore,_resetQuiz),
      ),
    );
  }
}
