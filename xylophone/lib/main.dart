import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int n}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          sound(n);
        },
        child: Container(),
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
              buildKey(color: Colors.redAccent, n: 1),
              buildKey(color: Colors.orangeAccent, n: 2),
              buildKey(color: Colors.yellow, n: 3),
              buildKey(color: Colors.green, n: 4),
              buildKey(color: Colors.teal, n: 5),
              buildKey(color: Colors.blueAccent, n: 6),
              buildKey(color: Colors.indigo, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
