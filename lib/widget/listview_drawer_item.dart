
import 'package:adaptive_dashboard/model/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/app_images.dart';
import 'package:adaptive_dashboard/widget/drawer_item_widget.dart';
import 'package:flutter/material.dart';

class ListviewDrawerItem extends StatefulWidget {
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
  State<ListviewDrawerItem> createState() => _ListviewDrawerItemState();
}

class _ListviewDrawerItemState extends State<ListviewDrawerItem> {
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SliverList.builder(

        itemCount: ListviewDrawerItem.drawerItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                if (activeindex != index) {
                  setState(() {
                    activeindex = index;
                  });
                }
              },
              child: DrawerItemWidget(
                isActive: activeindex == index,
                drawerItemModel: ListviewDrawerItem.drawerItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
