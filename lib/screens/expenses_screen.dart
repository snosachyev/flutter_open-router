import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:async';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  _ExpensesScreenState createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  List<FlSpot> _chartData = [];
  
  void _generateMockData() {
    final mockData = <FlSpot>[
      for (int i = 1; i <= DateTime.now().day; i++)
        FlSpot(
          i.toDouble(), 
          (DateTime.now().millisecondsSinceEpoch % 100) / 10,
        ),
    ];
    setState(() {
      _chartData = mockData;
    });
  }

  @override
  void initState() {
    super.initState();
    _generateMockData();
    // Update data every second
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _generateMockData();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("График расходов"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            gridData: FlGridData(show: true),
            borderData: FlBorderData(show: true),
            lineBarsData: [
              LineChartBarData(
          spots: _chartData,
                isCurved: true,
                barWidth: 3,
                color: Colors.blue,
                dotData: const FlDotData(show: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
