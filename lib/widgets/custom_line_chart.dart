import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatefulWidget {
  const CustomLineChart({super.key});

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: LineChart(
        LineChartData(
            borderData: FlBorderData(show: false),
            extraLinesData: ExtraLinesData(horizontalLines: [
              HorizontalLine(y: 0, color: Color(0xFFACA3A5), strokeWidth: 1.20),
              HorizontalLine(y: 1, color: Color(0xFFACA3A5), strokeWidth: 1.20)
            ]),
            lineBarsData: [
              LineChartBarData(
                  spots: [
                    const FlSpot(8, 0.65),
                    const FlSpot(8.5, 0.44),
                    const FlSpot(9.5, 0.67),
                    const FlSpot(10.5, 0.37),
                    const FlSpot(12, 0.8),
                    const FlSpot(13, 0.21),
                    const FlSpot(14, 0.6)
                  ],
                  dotData: FlDotData(
                    show: true,
                  ),
                  isCurved: true,
                  barWidth: 3,
                  curveSmoothness: 0.5,
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff1EFFD7), Color(0xff008080)]))
            ],
            minX: 8,
            maxX: 14,
            minY: 0,
            maxY: 1,
            titlesData: const FlTitlesData(
                bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                        interval: 1, reservedSize: 25, showTitles: true)),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                  showTitles: false,
                ))),
            gridData: FlGridData(
                show: true,
                drawHorizontalLine: true,
                drawVerticalLine: false,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                      color: Color(0xFFACA3A5),
                      strokeWidth: 1.20,
                      dashArray: null);
                })),
      ),
    );
  }
}
