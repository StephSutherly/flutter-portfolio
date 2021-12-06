import 'package:flutter/material.dart';
import 'package:flutter_portfolio/services/themes.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard(this.color, this.text, this.textStyle, {Key? key})
      : super(key: key);

  final Color color;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
