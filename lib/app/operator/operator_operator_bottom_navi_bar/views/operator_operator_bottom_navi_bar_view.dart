import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/image_path.dart';
import '../controllers/operator_operator_bottom_navi_bar_controller.dart';

class OperatorBottomNaviBarView
    extends GetView<OperatorBottomNaviBarController> {
  const OperatorBottomNaviBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex]),
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 80.h,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex,
            onTap: (value) => controller.changeIndex(value),
            items: [
              barItem(ImagePath.homeIcon, 'Home', 0),
              barItem(ImagePath.serviceIcon, 'Services', 1),
              barItem(ImagePath.historyIcon, 'History', 2),
              barItem(ImagePath.paymentIcon, 'Payment', 3),
              barItem(ImagePath.fleetIcon, 'Fleet', 4),
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
        height: isSelected ? 22.h : 20.h,
        color: isSelected
            ? AppColors.primaryColor
            : AppColors.bottomNaviTextColor, // Change colors as needed
      ),
      label: label,
    );
  }
}
