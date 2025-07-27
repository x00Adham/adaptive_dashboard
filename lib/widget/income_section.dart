import 'package:adaptive_dashboard/widget/income_chart_widget.dart';
import 'package:adaptive_dashboard/widget/incomeheaderwidget.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IncomeHeaderWidget(),
            SizedBox(height: 28),
            Expanded(
              child: IncomeChartWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

