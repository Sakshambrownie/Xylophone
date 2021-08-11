import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildApp({Color color, int num}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildApp(color: Colors.red, num: 1),
              buildApp(color: Colors.orange, num: 2),
              buildApp(color: Colors.yellow, num: 3),
              buildApp(color: Colors.green, num: 4),
              buildApp(color: Colors.blue, num: 5),
              buildApp(color: Colors.purple, num: 6),
              buildApp(color: Colors.teal, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
