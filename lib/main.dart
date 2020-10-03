import 'package:flutter/material.dart';
import 'package:todo/components/end_screen.dart';
import 'components/menu.dart';
import 'components/answer.dart';
import 'components/alphabet.dart';
import 'components/hieroglyphs_intro.dart';
import 'components/pinin_intro.dart';
import 'components/letter_intro.dart';
import 'components/initials.dart';
import 'components/end_screen.dart';

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
        '/alphabet': (context) => Alphabet(),
        '/hieroglyphs': (context) => Hieroglyphs(),
        '/pininIntro': (context) => PininIntro(),
        '/letterIntro': (context) => LetterIntro(),
        '/initials': (context) => Initials(),
        '/endScreen': (context) => EndScreen(),
      },
    );
  }
}
