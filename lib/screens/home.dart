import 'package:flutter/material.dart';
import '../services/themes.dart';
import '../widgets/contact_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ThemeService.light,
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(
              color: ThemeService.dark,
            ),
          ),
          backgroundColor: ThemeService.secondary,
          centerTitle: true,
        ),
        body: const Center(
          child: Card(
            color: ThemeService.secondaryLight,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Home Page Placeholder',
                  style: ThemeService.largeDisplayText),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ThemeService.primary,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: ThemeService.light,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
              backgroundColor: ThemeService.light,
            ),
          ],
        ),
      ),
    );
  }
}
