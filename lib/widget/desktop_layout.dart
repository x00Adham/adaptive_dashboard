import 'package:adaptive_dashboard/widget/custom_drawer.dart';
import 'package:adaptive_dashboard/widget/middle_section.dart';
import 'package:adaptive_dashboard/widget/right_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          Expanded(flex: 3, child: MiddelSectionWidget()),
          Expanded(flex: 2, child: RightSection()),
        ],
      ),
    );
  }
}
