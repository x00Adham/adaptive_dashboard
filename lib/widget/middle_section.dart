import 'package:adaptive_dashboard/widget/myexpenses_widget.dart';
import 'package:adaptive_dashboard/widget/quick_invoice_widget.dart';
import 'package:flutter/material.dart';

class MiddelSectionWidget extends StatelessWidget {
  const MiddelSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [MyexpensesWidget(), QuickInvoiceWidget()]);
  }
}
