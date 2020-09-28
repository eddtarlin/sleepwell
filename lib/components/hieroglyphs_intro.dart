import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hieroglyphs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget wordDescription = RichText(
      text: TextSpan(
        text:
            'В китайском языке каждому иероглифу соответствует один слог. Значит, ',
        style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontStyle: FontStyle.normal)),
        children: <TextSpan>[
          TextSpan(
              text: 'один слог', style: TextStyle(color: Colors.blue[400])),
          TextSpan(text: ' обозначает произношение одного'),
          TextSpan(
              text: ' иероглифа', style: TextStyle(color: Colors.blue[400])),
          TextSpan(text: '.'),
        ],
      ),
    );
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 16),
          decoration: BoxDecoration(),
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
              Container(
                  padding: EdgeInsets.all(14),
                  child: Row(
                    children: [
                      Text('Китайский иероглиф 八 (восемь) с\n Пиньинем',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal)))
                    ],
                  )),
              Container(
                  height: 300,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Text('bā',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 70,
                                      fontStyle: FontStyle.normal))),
                          Container(
                              width: 90, child: Icon(Icons.arrow_back_ios)),
                          Container(
                              padding: EdgeInsets.only(top: 6, left: 25),
                              height: 35,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text('это Пиньинь',
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal))))
                        ],
                      )),
                      Container(
                          child: Row(
                        children: [
                          Text('八',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 70,
                                      fontStyle: FontStyle.normal))),
                          Container(
                              width: 90, child: Icon(Icons.arrow_back_ios)),
                          Container(
                              padding: EdgeInsets.only(top: 8, left: 25),
                              height: 60,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text('Это китайский иероглиф',
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal))))
                        ],
                      ))
                    ],
                  )),
              Container(padding: EdgeInsets.all(18), child: wordDescription),
              Spacer(),
              Container(
                  margin: EdgeInsets.only(left: 140, top: 50),
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
                            Navigator.pushNamed(context, "/letterIntro"),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
