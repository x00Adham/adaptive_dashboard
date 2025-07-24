import 'package:adaptive_dashboard/utils/app_images.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.assetsImagesCardBackground,
            ),
            fit: BoxFit.cover,
          ),
          color: Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Name card",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                ),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                ),
              ),
              trailing: SvgPicture.asset(
                Assets.assetsImagesGallery,
              ),
            ),
            SizedBox(height: 27),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24w(),
                  ),
                  SizedBox(height: 23),
                  Text(
                    "012/20 - 124",
                    style: AppStyles.styleRegular16w(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
