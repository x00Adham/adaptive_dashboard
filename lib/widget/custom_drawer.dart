import 'package:adaptive_dashboard/model/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/app_images.dart';
import 'package:adaptive_dashboard/widget/drawer_item_widget.dart';
import 'package:adaptive_dashboard/widget/listview_drawer_item.dart';
import 'package:adaptive_dashboard/widget/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const UserInfoListTile(
              name: 'Lekan Okeowo',
              email: 'demo@gmail.com',
              avatar: Assets.assetsImagesAvatar3,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          ListviewDrawerItem(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.assetsImagesSettings,
                    title: "Setting system",
                  ),
                ),
                SizedBox(height: 20),
                InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.assetsImagesLogout,
                    title: "Logout account",
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
