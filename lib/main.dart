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
        body: const Center(
          child: Image(
            image: AssetImage('images/stephMeadows.jpeg'),
          ),
        ),
      ),
    ),
  );
}

// <div>Icons made by <a href="https://www.flaticon.com/authors/flat-icons" title="Flat Icons">Flat Icons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
