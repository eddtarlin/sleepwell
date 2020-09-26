import 'package:flutter/material.dart';
import 'components/menu.dart';
import 'components/answer.dart';
import 'components/alphabet.dart';

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
        '/quiz': (context) => AnswerContainer(),
        '/aphabet': (context) => Alphabet()
      },
    );
  }
}
