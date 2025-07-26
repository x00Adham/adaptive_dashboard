import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeHeaderWidget extends StatelessWidget {
  const IncomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Income", style: AppStyles.styleSemiBold20()),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Monthly", style: AppStyles.styleMedium16()),
                SizedBox(width: 18),
                Transform.rotate(
                  angle: -1.5708, // 90 degrees in radians
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color(0xFF003366),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
