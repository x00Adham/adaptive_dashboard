import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/myexpensesheaderwidget.dart';
import 'package:flutter/material.dart';

class MyexpensesWidget extends StatelessWidget {
  const MyexpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        color: Color(0xffFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              MyexpensesHeaderWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

