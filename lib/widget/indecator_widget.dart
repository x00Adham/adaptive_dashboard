import 'package:flutter/material.dart';

class IndecatorWidget extends StatelessWidget {
  const IndecatorWidget({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isActive ? Color(0xff4EB7F2) : Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 8,
      width: isActive ? 35 : 8,
    );
  }
}
