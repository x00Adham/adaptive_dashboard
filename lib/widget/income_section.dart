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
          children: [
            IncomeHeaderWidget(),
          ],
        ),
      ),
    );
  }
}

