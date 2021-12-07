import 'package:flutter/material.dart';
import '../../widgets/learningProjects/xylophone_key_button.dart';

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
