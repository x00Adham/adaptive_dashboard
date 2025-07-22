import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular16(),
        hintText: hint,
        fillColor: Color(0xffFAFAFA),
        filled: true,
        border: border(),
        enabledBorder: border(),
        focusedBorder: border(),
      ),
    );
  }
}

OutlineInputBorder border() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
