import 'package:adaptive_dashboard/model/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/app_images.dart';
import 'package:adaptive_dashboard/widget/drawer_item_widget.dart';
import 'package:flutter/material.dart';

class ListviewDrawerItem extends StatelessWidget {
  const ListviewDrawerItem({super.key});

  static final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: Assets.assetsImagesDashboard, title: "Dashboard"),
    DrawerItemModel(
      image: Assets.assetsImagesMyTransctions,
      title: "My Transaction",
    ),
    DrawerItemModel(image: Assets.assetsImagesStatistics, title: "Statistics"),
    DrawerItemModel(
      image: Assets.assetsImagesWalletAccount,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: Assets.assetsImagesMyInvestments,
      title: "My Investments",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return DrawerItemWidget(drawerItemModel: drawerItems[index]);
        },
      ),
    );
  }
}
