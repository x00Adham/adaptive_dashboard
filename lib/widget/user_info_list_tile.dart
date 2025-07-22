import 'package:adaptive_dashboard/model/user_details_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
  required this.userDetailsModel,
  });
  final UserDetailsModel userDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userDetailsModel.image),
        title: Text(userDetailsModel.title, style: AppStyles.styleSemiBold16()),
        subtitle: Text(userDetailsModel.subtitle, style: AppStyles.styleRegular12()),
      ),
    );
  }
}
