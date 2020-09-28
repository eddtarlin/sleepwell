import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PininIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    margin: EdgeInsets.only(top: 120),
                    padding: EdgeInsets.all(24),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('Пиньинь',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.red[300],
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal))),
                          ),
                          Container(height: 15),
                          Text(
                              'это официально принятая во всем мире фонетическая система китайского языка. Она представлена как латинская транскрипция китайских иероглифов.',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal)))
                        ])),
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
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                          ),
                          color: Colors.green,
                          onPressed: () =>
                              Navigator.pushNamed(context, "/hieroglyphs"),
                        )
                      ],
                    )),
              ],
            )));
  }
}
