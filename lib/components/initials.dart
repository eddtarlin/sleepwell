import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Initials extends StatefulWidget {
  @override
  _InitialsState createState() => _InitialsState();
}

class _InitialsState extends State<Initials> {
  @override
  AudioCache _audioCache;

  void initState() {
    super.initState();
    _audioCache = AudioCache(
        prefix: "audio/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(
                Icons.close,
              ),
              color: Colors.grey,
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/', (Route<dynamic> route) => false),
            ),
          ),
          Container(
              padding: EdgeInsets.all(12),
              child: Text('Инициали',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  )))),
          Container(padding: EdgeInsets.all(12), child: wordDescription),
          Padding(
            padding: EdgeInsets.all(16),
            child: Table(
              border: TableBorder.all(
                  color: Colors.white, width: 2, style: BorderStyle.solid),
              children: [
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text(
                                'b',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: GestureDetector(
                      child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('p', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {
                        _audioCache.play('kick.mp3');
                      },
                    ),
                  )),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('m', style: TextStyle(fontSize: 20)),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('f', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text(
                                'd',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: GestureDetector(
                      child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('t', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {
                        _audioCache.play('kick.mp3');
                      },
                    ),
                  )),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text('n', style: TextStyle(fontSize: 20)),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('l', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text(
                                'g',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: GestureDetector(
                      child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('k', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {
                        _audioCache.play('kick.mp3');
                      },
                    ),
                  )),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('h', style: TextStyle(fontSize: 20)),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text(
                                'j',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: GestureDetector(
                      child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('q', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {
                        _audioCache.play('kick.mp3');
                      },
                    ),
                  )),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('x', style: TextStyle(fontSize: 20)),
                            )),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text(
                                'z',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                  TableCell(
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: GestureDetector(
                      child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('c', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {},
                    ),
                  )),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('s', style: TextStyle(fontSize: 20)),
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text(
                                'zh',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                  TableCell(
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: GestureDetector(
                      child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('ch', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {},
                    ),
                  )),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text('sh', style: TextStyle(fontSize: 20)),
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('r', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text(
                                'y',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                  TableCell(
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: GestureDetector(
                      child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('w', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {},
                    ),
                  )),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 20,
                            height: 40,
                            child: Center(
                              child: Text('', style: TextStyle(fontSize: 20)),
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 20,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Spacer(),
          Container(
              margin: EdgeInsets.only(left: 155),
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
                    onPressed: () => Navigator.pushNamed(context, "/endScreen"),
                  )
                ],
              )),
        ],
      ),
    ));
  }

  Widget wordDescription = RichText(
    text: TextSpan(
      text: 'Всего в китайском языке ',
      style: GoogleFonts.lato(
          textStyle: TextStyle(
        color: Colors.black87,
        fontSize: 18,
      )),
      children: <TextSpan>[
        TextSpan(
            text: '23 инициали ', style: TextStyle(color: Colors.blue[400])),
        TextSpan(
            text:
                '. Они выглядят как согласные в европейских языках, но зачастую звучат по другому.'),
      ],
    ),
  );
}
