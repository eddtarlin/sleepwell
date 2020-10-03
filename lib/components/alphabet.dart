import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'initials.dart';

class Alphabet extends StatefulWidget {
  @override
  _AlphabetState createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
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
              child: Text('Финали',
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
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[300]),
                        child: GestureDetector(
                          child: Container(
                              width: 40,
                              height: 40,
                              child: Center(
                                child: Text(
                                  'a',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          onTap: () {
                            showAlert('a', context,
                                'Схожа с русской "а" в слове "мама", только произносится более напряженно.'); //letter and description
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
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('o',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            )),
                        onTap: () {
                          showAlert('о', context,
                              'Как русское "о" в слове "слон", только более напряженное.');
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
                                child: Text('e',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              )),
                          onTap: () {
                            showAlert('е', context,
                                'Звук среднее между нашим "э" и "ы". В сочетаниях "er", звук "е" произносится как "а".');
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
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('i',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          onTap: () {
                            showAlert('i', context,
                                'Схожа с русским "и" в слове "пир".');
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
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('u',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          onTap: () {
                            showAlert('u', context,
                                'Похожа на русскую "у" в слове "ухо".');
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
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text('ü',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          onTap: () {
                            showAlert('ü', context,
                                'В русском языке аналогов этого звука нет. Но кто знает немецкий, французский вспомнит произношение буквы ü в этих языках. Также такой звук встречается в турецком языке и других тюркских языках. Это что то среднее между "и", "ю" и "о". Чтобы произнести этот звук попробуйте гласную "и" только округлив губы как при произношении буквы "ю". Близкое сочетание получается при произношении слога "кю". Когда "ü" сочетаются c "j" "q" "x" "y", то точки не пишутся.');
                            _audioCache.play('kick.mp3');
                          },
                        ),
                      ),
                    )
                  ],
                ),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                'ai',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        onTap: () {
                          showAlert('u', context,
                              'Похожа на русскую "у" в слове "ухо".');
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ou', style: TextStyle(fontSize: 20)),
                          )),
                      onTap: () {
                        showAlert('u', context,
                            'Похожа на русскую "у" в слове "ухо".');
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
                              child: Text('ei', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ia', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ua', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('üe', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                'ao',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ong', style: TextStyle(fontSize: 20)),
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
                              child: Text('en', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('iao', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('uai', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('üan', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                'an',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
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
                              child:
                                  Text('eng', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ian', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('uan', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ün', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {
                          _audioCache.play('kick.mp3');
                        },
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                'ang',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
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
                              child: Text('er', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('iang', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('uang', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ie', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('uo', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('iu', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ui', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('in', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('un', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('ing', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
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
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '',
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
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
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('iong', style: TextStyle(fontSize: 20)),
                          ),
                        ),
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
                          width: 40,
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
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
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
                    onPressed: () => Navigator.pushNamed(context, "/initials"),
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
            text: '35 финалей ', style: TextStyle(color: Colors.blue[400])),
        TextSpan(text: ', среди них 6 простых финалей и 29 составных.'),
      ],
    ),
  );
}

void showAlert(word, context, content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: null,
        content: Container(
          height: 200,
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_circle_filled,
                    color: Colors.green[400],
                    size: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(word,
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                        ))),
                  )
                ],
              ),
              Wrap(
                children: [
                  Text(
                    content,
                  )
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

//initials
