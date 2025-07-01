import 'package:flutter/material.dart';
import 'package:test/screens/main_screen.dart';
import 'package:test/screens/onboard_screen.dart';
import 'package:test/styles/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.lightTheme, home: const MainScreen());
  }
}
