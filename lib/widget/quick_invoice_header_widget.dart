import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeaderWidget extends StatelessWidget {
  const QuickInvoiceHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Text(
        "Quick Invoice",
        style: AppStyles.styleSemiBold20(),
      ),
      trailing: CircleAvatar(
        backgroundColor: Color(0xffFAFAFA),
        child: Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
          size: 15,
        ),
      ),
    );
  }
}