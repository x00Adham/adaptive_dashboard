import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16() {
    return const TextStyle(
      color: Color(0xFF064060),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  

  static TextStyle styleRegular16w() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleRegular16g() {
    return const TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16() {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16() {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleMedium16b() {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20() {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16() {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20() {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12() {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: 12,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24() {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24w() {
    return TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14() {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18() {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}
