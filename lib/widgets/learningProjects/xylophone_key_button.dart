import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
