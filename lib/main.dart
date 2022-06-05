import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  void buildKey() {
    Expanded(
      child: TextButton(
        onPressed: () {
          playSound(1);
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        child: Text(''),
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
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.indigo,
                  ),
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  child: Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
