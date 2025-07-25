import 'package:adaptive_dashboard/widget/indecator_widget.dart';
import 'package:flutter/material.dart';

class IndecatorSection extends StatelessWidget {
  const IndecatorSection({super.key, required this.pageindex});
  final int pageindex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IndecatorWidget(isActive: pageindex == index),
        );
      }),
    );
  }
}
