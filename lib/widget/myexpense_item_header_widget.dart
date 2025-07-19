import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyexpenseItemHeader extends StatelessWidget {
  const MyexpenseItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: SvgPicture.asset(image),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFF003366)),
      ],
    );
  }
}
