import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              XylophoneNoteButton(Colors.red, 1),
              XylophoneNoteButton(Colors.orange, 2),
              XylophoneNoteButton(Colors.yellow, 3),
              XylophoneNoteButton(Colors.green, 4),
              XylophoneNoteButton(Colors.blue, 5),
              XylophoneNoteButton(Colors.indigo, 6),
              XylophoneNoteButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneNoteButton extends StatelessWidget {
  const XylophoneNoteButton(this.color, this.note, {Key? key})
      : super(key: key);

  final Color color;
  final int note;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$note.wav');
        },
        child: const Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }
}
