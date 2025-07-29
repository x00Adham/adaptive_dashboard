import 'package:adaptive_dashboard/model/transaction_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionListview extends StatelessWidget {
  TransactionListview({super.key});
  final List<TransactionModel> items = [
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
    return Column(
      children: items.map((e) => TransactionItem(item: e)).toList(),
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.item});

  final TransactionModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title, style: AppStyles.styleSemiBold16()),
      subtitle: Text(item.time, style: AppStyles.styleRegular16g()),
      trailing: Text(
        item.ammount,
        style: TextStyle(
          color:
              item.withdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xff7DD97B),
          fontSize: 20,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
