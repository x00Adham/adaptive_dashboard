import 'package:adaptive_dashboard/widget/income_section.dart';
import 'package:adaptive_dashboard/widget/mycardsection.dart';
import 'package:flutter/material.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2, child: MyCardSection()),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
