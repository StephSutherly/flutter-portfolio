import 'package:flutter/material.dart';
import '../../services/themes.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ThemeService.primaryAccentLight,
        appBar: AppBar(
          title: const Text(
            'Dice',
            style: TextStyle(
              color: ThemeService.dark,
            ),
          ),
          backgroundColor: ThemeService.primaryAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber = throwDice();
                        rightDiceNumber = throwDice();
                      });
                    },
                    child: const Card(
                      color: ThemeService.primaryAccentDark,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 20.0,
                        ),
                        child: Text(
                          'Click to roll both die at once or click dice to roll one at a time',
                          style: TextStyle(
                            color: ThemeService.light,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftDiceNumber = throwDice();
                        });
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          rightDiceNumber = throwDice();
                        });
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int throwDice() {
  return Random().nextInt(6) + 1;
}
