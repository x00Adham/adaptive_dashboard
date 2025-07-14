import 'package:adaptive_dashboard/utils/app_images.dart';
import 'package:adaptive_dashboard/widget/listview_drawer_item.dart';
import 'package:adaptive_dashboard/widget/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            name: 'Lekan Okeowo',
            email: 'demo@gmail.com',
            avatar: Assets.assetsImagesAvatar3,
          ),
          SizedBox(height: 8),
          ListviewDrawerItem(),
        ],
      ),
    );
  }
}
