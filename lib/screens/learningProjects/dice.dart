import 'package:flutter/material.dart';
import '../../services/themes.dart';

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

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
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('images/dice1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('images/dice2.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
