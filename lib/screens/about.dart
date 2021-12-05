import 'package:flutter/material.dart';
import '../services/themes.dart';
import '../widgets/contact_card.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
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
                      fontStyle: FontStyle.italic),
                ),
                Text('FLUTTER DEVELOPER', style: ThemeService.mediumText),
                ContactCard(Icons.phonelink_ring, '+44 7094285454'),
                ContactCard(Icons.email, 'stephanielarasutherland@gmail.com'),
                ContactCard(Icons.code, 'StephanieLaraScully'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
