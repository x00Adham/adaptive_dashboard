import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/quick_invoice_header_widget.dart';
import 'package:flutter/material.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuickInvoiceHeaderWidget(),
              SizedBox(height: 24),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
