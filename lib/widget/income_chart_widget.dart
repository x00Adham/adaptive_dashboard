import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartWidget extends StatefulWidget {
  const IncomeChartWidget({super.key});

  @override
  State<IncomeChartWidget> createState() => _IncomeChartWidgetState();
}

class _IncomeChartWidgetState extends State<IncomeChartWidget> {
  int activeSec = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          pieTouchData: PieTouchData(
            touchCallback: (p0, p1) {
              activeSec = p1?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
            enabled: true,
          ),
          sections: [
            PieChartSectionData(
              value: 40,
              color: Color(0xFF208CC8), // Blue
              radius: activeSec == 0 ? 40 : 30,
              showTitle: false,
            ),
            PieChartSectionData(
              value: 22,
              color: Color(0xFFE2DECD), // Light Blue
              radius: activeSec == 1 ? 40 : 30,
              showTitle: false,
            ),
            PieChartSectionData(
              value: 20,
              color: Color(0xFF064061), // Dark Blue
              radius: activeSec == 2 ? 40 : 30,
              showTitle: false,
            ),
            PieChartSectionData(
              value: 25,
              color: Color(0xFF4EB7F2), // Light Gray
              radius: activeSec == 3 ? 40 : 30,
              showTitle: false,
            ),
          ],
        ),
      ),
    );
  }
}
