import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Статистика использования токенов"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DataTable(
          columns: const [
            DataColumn(label: Text("Модель")),
            DataColumn(label: Text("Запросы")),
            DataColumn(label: Text("Токены")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("gpt-4")),
              DataCell(Text("12")),
              DataCell(Text("3 500")),
            ]),
            DataRow(cells: [
              DataCell(Text("gpt-3.5")),
              DataCell(Text("25")),
              DataCell(Text("7 200")),
            ]),
            DataRow(cells: [
              DataCell(Text("deepseek-r1")),
              DataCell(Text("8")),
              DataCell(Text("1 100")),
            ]),
          ],
        ),
      ),
    );
  }
}
