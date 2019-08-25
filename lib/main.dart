import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    "What's is your favourite color?",
    "What's is your favourite animal?"
  ];

  void _showAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('questionIndex: ' + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Center(
          child: Column(
            children: [
              Question(_questions[_questionIndex]),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: _showAnswer,
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
