import 'package:adaptive_dashboard/widget/adaptive_layout_widget.dart';
import 'package:adaptive_dashboard/widget/desktop_layout.dart';
import 'package:adaptive_dashboard/widget/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      desktopLayout: (context) => DesktopLayout(),
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => TabletLayout(),
    );
  }
}