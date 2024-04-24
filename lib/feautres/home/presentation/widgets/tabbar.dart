import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import 'gradient_border_container_text.dart';

class TabBarHome extends StatefulWidget {
  const TabBarHome({super.key});

  @override
  State<TabBarHome> createState() => _TabBarHomeState();
}

class _TabBarHomeState extends State<TabBarHome> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedTab = 0;
                });
              },
              child: Container(
                width: double.infinity,
                height: 48,
                child: GradientBorderContainerText(
                  width: double.infinity,
                  height: 48,
                  radius: 0.0,
                  child: 'Upcoming',
                  colors: AppColors.tabBorder,
                  isActive: selectedTab == 0,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedTab = 1;
                });
              },
              child: Container(
                width: double.infinity,
                height: 48,
                child: GradientBorderContainerText(
                  width: double.infinity,
                  height: 48,
                  radius: 0.0,
                  child: 'Ongoing',
                  colors: AppColors.tabBorder,
                  isActive: selectedTab == 1,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedTab = 2;
                });
              },
              child: Container(
                width: double.infinity,
                height: 48,
                child: GradientBorderContainerText(
                  width: double.infinity,
                  height: 48,
                  radius: 0.0,
                  child: 'Past',
                  colors: AppColors.tabBorder,
                  isActive: selectedTab == 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
