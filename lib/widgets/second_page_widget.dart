import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  final List<double> xValues;
  final List<double> yValues;

  const MapWidget({super.key, required this.xValues, required this.yValues});

  @override
  Widget build(BuildContext context) {
    List<FlSpot> dataPoints = generateDataPoints(xValues, yValues);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(show: true),
            borderData: FlBorderData(show: true),
            lineBarsData: [
              LineChartBarData(
                spots: dataPoints,
                isCurved: false,
                barWidth: 4,
                isStrokeCapRound: true,
                dotData: FlDotData(show: true),
                belowBarData: BarAreaData(show: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<FlSpot> generateDataPoints(List<double> xValues, List<double> yValues) {
    List<FlSpot> dataPoints = [];
    for (int i = 0; i < xValues.length; i++) {
      dataPoints.add(FlSpot(xValues[i], yValues[i]));
    }
    return dataPoints;
  }
}
