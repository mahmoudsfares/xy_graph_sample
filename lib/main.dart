import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('X/Y Graph Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 10,
                  getTitlesWidget: (value, meta) => Text('${value.toInt()}')
                ),
              ),
              rightTitles: AxisTitles(sideTitles: null),
              bottomTitles: AxisTitles(sideTitles: null),
              topTitles: AxisTitles(sideTitles: null),
            ),
            gridData: FlGridData(show: true),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
            ),
            minY: 0,
            maxY: 90,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(1, 30),
                  const FlSpot(2, 50),
                  const FlSpot(3, 20),
                  const FlSpot(4, 80),
                  const FlSpot(5, 60),
                  const FlSpot(6, 40),
                  const FlSpot(7, 90),
                  const FlSpot(8, 70),
                  const FlSpot(9, 30),
                  const FlSpot(10, 50),
                  const FlSpot(11, 30),
                  const FlSpot(12, 50),
                  const FlSpot(13, 20),
                  const FlSpot(14, 80),
                  const FlSpot(15, 60),
                  const FlSpot(16, 40),
                  const FlSpot(17, 90),
                  const FlSpot(18, 70),
                  const FlSpot(19, 30),
                  const FlSpot(20, 50),
                ],
                isCurved: true,
                belowBarData: BarAreaData(show: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
