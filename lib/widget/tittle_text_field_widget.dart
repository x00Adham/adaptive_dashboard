import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/custom_text_filed.dart';
import 'package:flutter/material.dart';

class TittleTextFieldWidget extends StatelessWidget {
  const TittleTextFieldWidget({super.key, required this.tittle, required this.hint});
  final String tittle, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tittle, style: AppStyles.styleMedium16()),
        SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}