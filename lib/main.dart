import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final title = 'Quiz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      initialRoute: '/',
      routes: {
        '/': (context) => Menu(),
        '/quiz': (context) => AnswerContainer()
      },
    );
  }
}

class Menu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Start!'),
          onPressed: () {
            Navigator.pushNamed(context, '/quiz');
          },
        ),
      ),
    );
  }
}

class AnswerContainer extends StatefulWidget {
  AnswerContainer({Key key}) : super(key: key);
  @override
  _AnswerContainerState createState() => _AnswerContainerState();
}

class _AnswerContainerState extends State<AnswerContainer> {
  List<String> _sentenceChips;
  List<String> _answerArray;
  String _answer;
  bool _answerTrue;

  @override
  void initState() {
    super.initState();
    _sentenceChips = ['I', 'dogs', 'like', 'much', 'very'];
    _answer = 'I like dogs very much';
    _answerTrue = false;
    _answerArray = [];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.red[300],
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    width: /*MediaQuery.of(context).size.width */ 700,
                    height: 200,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[300],
                      boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 3),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: Text('Find the correct answer:',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0)),
                        ),
                        Divider(color: Colors.white),
                        Container(
                            padding: const EdgeInsets.all(16),
                            child: Text('我 真 的 很 喜 欢 狗',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26.0)))
                      ],
                    ),
                  ),
                  Container(
                      width: 500,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 3),
                        ],
                      ),
                      child: Wrap(
                        children: List<Widget>.generate(_answerArray.length,
                            (int index) {
                          return GestureDetector(
                            child: Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[50],
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white, spreadRadius: 3),
                                  ],
                                ),
                                child: Text(
                                  _answerArray[index],
                                  style: TextStyle(fontSize: 18),
                                )),
                            onTap: () {
                              setState(() {
                                _sentenceChips.add(_answerArray[index]);
                                _answerArray.removeAt(index);
                              });
                            },
                          );
                        }),
                      )),
                  Container(
                      decoration: BoxDecoration(),
                      padding: const EdgeInsets.all(2),
                      child: chipSentence(_sentenceChips)),
                  Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(9),
                      child: buttonCheck())
                ],
              ))
        ],
      ),
    );
  }

  buttonCheck() {
    if (_answerArray.length == 0) {
      return Container();
    } else {
      return FlatButton(
          color: Colors.green[200],
          textColor: Colors.white,
          padding: EdgeInsets.all(8),
          onPressed: () {
            String answer = _answerArray.join(' ');
            if (answer == _answer) {
              _answerTrue = true;
              showAlert('Correct', context, _answerTrue);
            } else {
              _answerTrue = false;
              showAlert('Incorrect', context, _answerTrue);
            }
          },
          child: Text('Check'));
    }
  }

  //array of sentence parts as parameter
  chipSentence(sentence) {
    return Wrap(
      children: List<Widget>.generate(sentence.length, (int index) {
        return GestureDetector(
            child: Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(color: Colors.white, spreadRadius: 3),
                  ],
                ),
                child: Text(sentence[index], style: TextStyle(fontSize: 18))),
            onTap: () {
              setState(() {
                _answerArray.add(sentence[index]);
                _sentenceChips.removeAt(index);
              });
            });
      }),
    );
  }

  void showAlert(title, context, answer) {
    String content = 'Next!';
    if (answer == false) {
      content = 'Try Again!';
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: null,
          actions: [
            FlatButton(
                onPressed: () {
                  if (answer == true) {
                    Navigator.of(context).pop();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                child: Text(content))
          ],
        );
      },
    );
  }
}
