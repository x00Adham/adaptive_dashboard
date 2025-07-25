import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/indecator_section.dart';
import 'package:adaptive_dashboard/widget/mycardpageview.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        pageIndex = pageController.page!.round();
      });
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My card", style: AppStyles.styleSemiBold20()),
              SizedBox(height: 20),
              MyCardPageView(pageController: pageController),
              SizedBox(height: 9),

              IndecatorSection(pageindex: pageIndex),

              Divider(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction History",
                    style: AppStyles.styleSemiBold20(),
                  ),
                  Text("See all", style: AppStyles.styleMedium16b()),
                ],
              ),
              SizedBox(height: 20),
              Text("13 April 2022",style: AppStyles.styleMedium16(),),
              SizedBox(height: 16,)
              
            ],
          ),
        ),
      ),
    );
  }
}
