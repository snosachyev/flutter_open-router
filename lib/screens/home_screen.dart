import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главная')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Добро пожаловать в AIChatFlutter!'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/settings'),
              child: const Text('Настройки'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/statistics'),
              child: const Text('Статистика'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/expenses'),
              child: const Text('График расходов'),
            ),
          ],
        ),
      ),
    );
  }
}
