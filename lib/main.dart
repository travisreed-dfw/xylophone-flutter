import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int keyNumber, Color keyColor, var keyText = ""}) =>
      Expanded(
        child: TextButton(
          child: Text(keyText),
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(keyColor)),
          onPressed: () {
            playSound(keyNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyNumber: 1, keyColor: Colors.red),
              buildKey(keyNumber: 2, keyColor: Colors.orange),
              buildKey(keyNumber: 3, keyColor: Colors.yellow),
              buildKey(keyNumber: 4, keyColor: Colors.green),
              buildKey(keyNumber: 5, keyColor: Colors.indigo),
              buildKey(keyNumber: 6, keyColor: Colors.blue),
              buildKey(keyNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
