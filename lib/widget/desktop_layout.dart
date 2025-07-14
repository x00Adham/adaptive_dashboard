import 'package:adaptive_dashboard/widget/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(children: [Expanded(child: CustomDrawer())]));
  }
}
