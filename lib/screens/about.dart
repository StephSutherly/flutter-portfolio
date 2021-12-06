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
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/stephMeadows.jpeg'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Stephanie Lara Sutherland',
                  style: ThemeService.largeDisplayText,
                ),
                Text('FLUTTER DEVELOPER', style: ThemeService.mediumText),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: ThemeService.primaryDark,
                  ),
                ),
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
