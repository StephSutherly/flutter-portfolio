import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/services/themes.dart';
import 'package:flutter_portfolio/widgets/description_card.dart';

class MagicEightBall extends StatelessWidget {
  const MagicEightBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ThemeService.secondaryAccentLight,
        appBar: AppBar(
          title: const Text(
            'Magic Eight Ball',
            style: TextStyle(
              color: ThemeService.light,
            ),
          ),
          backgroundColor: ThemeService.primaryAccentDark,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            DescriptionCard(
              ThemeService.primaryAccentDark,
              'Ask the Magic Eight Ball any yes or no question, then click it to find the answer!',
              TextStyle(
                fontSize: 20.0,
              ),
            ),
            Ball(),
          ],
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            setState(() {
              ballImageNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('images/ball$ballImageNumber.png')),
    );
  }
}
