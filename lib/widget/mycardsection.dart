import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/mycardwidget.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My card", style: AppStyles.styleSemiBold20()),
              SizedBox(height: 20),
              MyCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
