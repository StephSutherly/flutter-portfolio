import 'package:flutter/material.dart';
import 'services/themes.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Steph\'s App'),
          backgroundColor: ThemeService.primary,
          centerTitle: true,
        ),
      ),
    ),
  );
}
