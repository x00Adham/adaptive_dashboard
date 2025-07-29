import 'package:adaptive_dashboard/model/chart_details_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ChartDetailsListView extends StatelessWidget {
  const ChartDetailsListView({super.key});

  static final List<ChartDetailsModel> items = [
    ChartDetailsModel(
      title: "Design service",
      value: "40%",
      color: Color(0xff208CC8),
    ),
    ChartDetailsModel(
      title: "Design product",
      value: "25%",
      color: Color(0xff4EB7F2),
    ),
    ChartDetailsModel(
      title: "Product royalty",
      value: "20%",
      color: Color(0xff064061),
    ),
    ChartDetailsModel(title: "Other", value: "22%", color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ChartDetailItem(item: e)).toList(),
    );
  }
}

class ChartDetailItem extends StatelessWidget {
  const ChartDetailItem({super.key, required this.item});

  final ChartDetailsModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: item.color, radius: 6),
      title: Text(item.title, style: AppStyles.styleRegular16()),
      trailing: Text(item.value, style: AppStyles.styleRegular16()),
    );
  }
}
