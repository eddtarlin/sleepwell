import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: Column(children: [
          RaisedButton(
            child: Text('Quiz'),
            onPressed: () {
              Navigator.pushNamed(context, '/quiz');
            },
          ),
          RaisedButton(
            child: Text('Вступление'),
            onPressed: () {
              Navigator.pushNamed(context, '/aphabet');
            },
          ),
        ]),
      ),
    );
  }
}
