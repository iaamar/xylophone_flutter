import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int num, var text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, num: 1, text: 'Note 1'),
              buildKey(color: Colors.orange, num: 2, text: 'Note 2'),
              buildKey(color: Colors.yellow, num: 3, text: 'Note 3'),
              buildKey(color: Colors.green, num: 4, text: 'Note 4'),
              buildKey(color: Colors.blueAccent, num: 5, text: 'Note 5'),
              buildKey(color: Colors.indigo, num: 6, text: 'Note 6'),
              buildKey(color: Colors.deepPurple, num: 7, text: 'Note 7'),
            ],
          ),
        ),
      ),
    );
  }
}
