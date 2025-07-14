import 'package:adaptive_dashboard/view/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveDashboardApp());
}

class AdaptiveDashboardApp extends StatelessWidget {
  const AdaptiveDashboardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F9FA),
      ),
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
