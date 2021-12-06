import 'package:flutter/material.dart';
import '../services/themes.dart';

class ContactCard extends StatelessWidget {
  const ContactCard(this.icon, this.text, {Key? key}) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 60.0),
      color: ThemeService.light,
      child: ListTile(
        leading: Icon(icon, color: ThemeService.dark),
        title: Text(text),
      ),
    );
  }
}
