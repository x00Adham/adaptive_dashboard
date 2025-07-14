import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.name,
    required this.email,
    required this.avatar,
  });
  final String name, email, avatar;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(avatar),
        title: Text(name, style: AppStyles.styleSemiBold16()),
        subtitle: Text(email, style: AppStyles.styleRegular12()),
      ),
    );
  }
}
