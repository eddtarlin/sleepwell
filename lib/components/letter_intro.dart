import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class LetterIntro extends StatefulWidget {
  @override
  _LetterIntroState createState() => _LetterIntroState();
}

class _LetterIntroState extends State<LetterIntro> {
  @override
  bool b_clicked;
  bool a_clicked;
  bool audio_clicked;
  void initState() {
    super.initState();
    b_clicked = false;
    a_clicked = false;
    audio_clicked = false;
  }

  Widget build(BuildContext context) {
    Widget wordDescription = RichText(
      text: TextSpan(
        text: 'Каждая транскрипция ',
        style: GoogleFonts.lato(
            textStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18,
        )),
        children: <TextSpan>[
          TextSpan(text: 'Пиньинь ', style: TextStyle(color: Colors.blue[400])),
          TextSpan(text: ' включает в себя три части: '),
          TextSpan(
              text: ' инициаль, финаль и тон',
              style: TextStyle(color: Colors.blue[400])),
          TextSpan(text: '. Нажмите на каждую часть, чтобы узнать больше'),
          TextSpan(text: '.'),
        ],
      ),
    );

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                  ),
                  color: Colors.grey,
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil(
                          '/', (Route<dynamic> route) => false),
                ),
              ),
              Container(padding: EdgeInsets.all(18), child: wordDescription),
              Container(
                  margin: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          child: Icon(
                            Icons.play_circle_filled,
                            color: Colors.green[400],
                            size: 50,
                          ),
                          onTap: () {}),
                      Container(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          child: Text('b',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 60,
                                      fontStyle: FontStyle.normal))),
                        ),
                        onTap: () {
                          setState(() {
                            b_clicked = true;
                          });
                        },
                      ),
                      Container(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Text('ā',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 55,
                                    fontStyle: FontStyle.normal))),
                        onTap: () {
                          setState(() {
                            a_clicked = true;
                          });
                        },
                      ),
                    ],
                  )),
              Container(padding: EdgeInsets.all(18), child: bBtnClicked()),
              Container(padding: EdgeInsets.all(18), child: aBtnClicked()),
              Spacer(),
              Container(
                  margin: EdgeInsets.only(left: 140),
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                        color: Colors.green,
                        onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                        ),
                        color: Colors.green,
                        onPressed: () =>
                            Navigator.pushNamed(context, "/alphabet"),
                      )
                    ],
                  )),
            ],
          )),
    );
  }

  bBtnClicked() {
    if (b_clicked) {
      setState(() {
        a_clicked = false;
      });
      return Container(
          child: Column(
        children: [
          Text(
              'Это инициаль (согласный звук). Она всегда стоит в начале слога. В слоге может быть только одна инициаль.',
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 18))),
          Container(
            height: 40,
          ),
          Text(
              'Каждая ициаль состоит из одной или двух букв. Всего в китайском языке 23 инициали.',
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 18))),
        ],
      ));
    } else {
      return null;
    }
  }

  aBtnClicked() {
    setState(() {
      b_clicked = false;
    });
    if (a_clicked) {
      return Container(
          child: Column(
        children: [
          Text(
              'Это финаль (гласный звук). Финаль стоит после инициали. В одном слоге может быть использована только одна финаль. Финаль также может быть слогом сама по себе без инициали и тона.',
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 18))),
          Container(
            height: 15,
          ),
          Text(
              'Каждая финаль составляется из одной, двух, трех или четырех букв. Всего в китайском языке 35 финалей.',
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 18))),
        ],
      ));
    } else {
      return null;
    }
  }
}
