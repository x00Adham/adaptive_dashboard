import 'package:adaptive_dashboard/widget/quick_invoice_header_widget.dart';
import 'package:adaptive_dashboard/widget/transactionformwidget.dart';
import 'package:adaptive_dashboard/widget/user_detail_listview_widget.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuickInvoiceHeaderWidget(),
                LatestTransactionSession(),
                const Divider(height: 48),
                TransactionFormWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

