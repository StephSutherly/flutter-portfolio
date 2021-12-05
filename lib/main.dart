import 'package:flutter/material.dart';
import 'services/themes.dart';

void main() {
  runApp(const About());
}

// <div>Icons made by <a href="https://www.flaticon.com/authors/flat-icons" title="Flat Icons">Flat Icons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ThemeService.primaryLight,
        appBar: AppBar(
          title: const Text(
            'About',
            style: TextStyle(
              color: ThemeService.light,
            ),
          ),
          backgroundColor: ThemeService.primary,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('images/stephMeadows.jpeg'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Stephanie Lara Sutherland',
                  style: TextStyle(
                    fontFamily: 'LobsterTwo',
                    fontSize: 25.0,
                    color: ThemeService.dark,
                  ),
                ),
                Text('Flutter Developer'),
                Text('07904285454')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
