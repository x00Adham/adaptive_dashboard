import 'package:adaptive_dashboard/model/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title:Text(drawerItemModel.title,style: AppStyles.styleRegular16(),) ,
    );
  }
}
