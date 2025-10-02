import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Статистика токенов')),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Модель: OpenRouter'),
            subtitle: Text('Токены использованы: 12345'),
          ),
          ListTile(
            title: Text('Модель: VSEGPT'),
            subtitle: Text('Токены использованы: 6789'),
          ),
        ],
      ),
    );
  }
}
