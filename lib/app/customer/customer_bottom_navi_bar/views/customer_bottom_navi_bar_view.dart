import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/image_path.dart';

import '../controllers/customer_bottom_navi_bar_controller.dart';

class CustomerBottomNaviBarView
    extends GetView<CustomerBottomNaviBarController> {
  const CustomerBottomNaviBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> controller.screens[controller.selectedIndex]),
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 80.h,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex,
            onTap: (value) => controller.changeIndex(value),
            items: [
              barItem(ImagePath.homeIcon, 'Home', 0),
              barItem(ImagePath.serviceIcon, 'Service', 1),
              barItem(ImagePath.historyIcon, 'History', 2),
              barItem(ImagePath.supportIcon, 'Support', 3),
              barItem(ImagePath.profileIcon, 'Profile', 4),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem barItem(String imagePath, String label, int index) {
    final isSelected = controller.selectedIndex == index;

    return BottomNavigationBarItem(
      icon: Image.asset(
        imagePath,
        height: isSelected ? 28.h : 26.h,
        color: isSelected
            ? AppColors.primaryColor
            : AppColors.bottomNaviTextColor, // Change colors as needed
      ),
      label: label,
    );
  }
}
