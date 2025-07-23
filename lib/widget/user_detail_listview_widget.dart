import 'package:adaptive_dashboard/model/user_details_model.dart';
import 'package:adaptive_dashboard/utils/app_images.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionSession extends StatefulWidget {
  const LatestTransactionSession({super.key});

  @override
  State<LatestTransactionSession> createState() =>
      _LatestTransactionSessionState();
}

class _LatestTransactionSessionState extends State<LatestTransactionSession> {
  final List<UserDetailsModel> items = [
    UserDetailsModel(
      image: Assets.assetsImagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserDetailsModel(
      image: Assets.assetsImagesAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserDetailsModel(
      image: Assets.assetsImagesAvatar1,
      title: 'Charlie Brown',
      subtitle: 'charlie.brown@email.com',
    ),
    UserDetailsModel(
      image: Assets.assetsImagesAvatar1,
      title: 'Charlie Brown',
      subtitle: 'charlie.brown@email.com',
    ),
    UserDetailsModel(
      image: Assets.assetsImagesAvatar1,
      title: 'Charlie Brown',
      subtitle: 'charlie.brown@email.com',
    ),
    UserDetailsModel(
      image: Assets.assetsImagesAvatar1,
      title: 'Charlie Brown',
      subtitle: 'charlie.brown@email.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Text("Latest Transaction", style: AppStyles.styleMedium16()),
        const SizedBox(height: 12),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return IntrinsicWidth(
                child: UserInfoListTile(userDetailsModel: items[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
