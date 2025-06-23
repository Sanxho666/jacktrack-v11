import 'package:flutter/material.dart';
import '../screens/LoginScreen.dart';
import '../screens/MapScreen.dart';
import '../screens/ScorecardScreen.dart';
import '../screens/GameHistoryScreen.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/map': (context) => const MapScreen(),
        '/scorecard': (context) => const ScorecardScreen(),
        '/history': (context) => const GameHistoryScreen(),
      },
    );
  }
}