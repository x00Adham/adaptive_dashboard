import 'package:adaptive_dashboard/model/myexpenses_item_model.dart';
import 'package:adaptive_dashboard/utils/app_images.dart';
import 'package:adaptive_dashboard/widget/myexpenses_item_widget.dart';
import 'package:adaptive_dashboard/widget/myexpensesheaderwidget.dart';
import 'package:flutter/material.dart';

class MyexpensesWidget extends StatelessWidget {
  const MyexpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data, replace with your actual data source
    final items = [
      MyexpensesItemModel(
        image: Assets.assetsImagesBalance,
        title: 'Balance',
        date: '2023-06-01',
        value: '\$120',
      ),
      MyexpensesItemModel(
        image: Assets.assetsImagesIncome,
        title: 'Income',
        date: '2023-06-01',
        value: '\$120',
      ),
      MyexpensesItemModel(
        image: Assets.assetsImagesExpenses,
        title: 'Expenses',
        date: '2023-06-01',
        value: '\$120',
      ),
      // Add more items as needed
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        elevation: 0,
        color: Color(0xffFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyexpensesHeaderWidget(),
              SizedBox(height: 16),
              Row(
                children: [
                  ...items.map(
                    (item) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: MyexpensesItemWidget(expensesItem: item),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
