import 'package:flutter/material.dart';
import 'package:islami_app/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName : (_) =>HomeScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

