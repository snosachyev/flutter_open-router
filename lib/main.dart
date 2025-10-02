import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/statistics_screen.dart';
import 'screens/expenses_screen.dart';

void main() {
  runApp(const AIChatApp());
}

class AIChatApp extends StatelessWidget {
  const AIChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Chat Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/statistics': (context) => const StatisticsScreen(),
        '/expenses': (context) => const ExpensesScreen(),
      },
    );
  }
}
