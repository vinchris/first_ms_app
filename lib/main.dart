import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
    var questionIndex = 0;
    var questions = [
      "What's is your favourite color?",
      "What's is your favourite animal?"
    ];

    showAnswer(){
      setState(() {
      questionIndex = questionIndex + 1;
      });
      print('questionIndex: '+questionIndex.toString());
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
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: showAnswer,
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
