import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/description_card.dart';
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
          child: DescriptionCard(
            ThemeService.secondaryLight,
            'Home Page Placeholder',
            TextStyle(
              fontSize: 20.0,
              color: ThemeService.dark,
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
