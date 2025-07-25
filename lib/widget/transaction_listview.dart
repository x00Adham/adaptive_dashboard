import 'package:adaptive_dashboard/model/transaction_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionListview extends StatelessWidget {
  TransactionListview({super.key});
  final List<TransactionModel> item = [
    TransactionModel(
      title: "Cash Withdrawal",
      time: "13 Apr, 2022",
      ammount: r"$20,129",
      withdrawal: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      time: "13 Apr, 2022 at 3:30 PM",
      ammount: r"$2,000",
      withdrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      time: "13 Apr, 2022 at 3:30 PM",
      ammount: r"$20,129",
      withdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(item[index].title, style: AppStyles.styleSemiBold16()),
            subtitle: Text(
              item[index].time,
              style: AppStyles.styleRegular16g(),
            ),
            trailing: Text(
              item[index].ammount,
              style: TextStyle(
                color:
                    item[index].withdrawal
                        ? const Color(0xFFF3735E)
                        : const Color(0xff7DD97B),
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}
