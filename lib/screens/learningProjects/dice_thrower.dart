import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/description_card.dart';
import '../../services/themes.dart';
import 'dart:math';

class DiceThrower extends StatefulWidget {
  const DiceThrower({Key? key}) : super(key: key);

  @override
  State<DiceThrower> createState() => _DiceThrowerState();
}

class _DiceThrowerState extends State<DiceThrower> {
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
                    child: const DescriptionCard(
                      ThemeService.primaryAccentDark,
                      'Click to roll both die at once or click dice to roll one at a time',
                      TextStyle(
                        fontSize: 20.0,
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

// TODO Refactor Die into Dice widgets for reusability
// class Dice extends StatefulWidget {
//   const Dice(this.diceNumber, {Key? key}) : super(key: key);
//
//   final int diceNumber;
//
//   @override
//   _DiceThrowerState createState() => _DiceThrowerState();
// }
//
// class _DiceState extends State<DiceThrower> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: TextButton(
//         onPressed: () {
//           setState(() {
//             widget.diceNumber = throwDice();
//           });
//         },
//         child: Image.asset('images/dice$widget.diceNumber.png'),
//       ),
//     );
//   }
// }
