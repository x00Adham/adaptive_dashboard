import 'package:adaptive_dashboard/model/myexpenses_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/myexpense_item_header_widget.dart';
import 'package:flutter/material.dart';

class MyexpensesItemWidget extends StatelessWidget {
  const MyexpensesItemWidget({super.key, required this.expensesItem});
  final MyexpensesItemModel expensesItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),

          side: BorderSide(color: Color(0xFFF1F1F1)), // Example border color
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyexpenseItemHeader(image: expensesItem.image),

          SizedBox(height: 16),
          Text(expensesItem.title, style: AppStyles.styleSemiBold16()),
          SizedBox(height: 8),
          Text(expensesItem.date, style: AppStyles.styleRegular14()),
          SizedBox(height: 16),
          Text(expensesItem.value, style: AppStyles.styleSemiBold24()),
        ],
      ),
    );
  }
}
