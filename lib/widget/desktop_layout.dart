import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/custom_drawer.dart';
import 'package:adaptive_dashboard/widget/myexpenses_widget.dart';
import 'package:adaptive_dashboard/widget/quick_invoice_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                MyexpensesWidget(),
                QuickInvoiceWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


