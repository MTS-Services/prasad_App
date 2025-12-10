import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? widget;
  final VoidCallback? onPressed;

  const CustomAppbar({super.key, this.title, this.widget, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: false,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          margin: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: onPressed ?? () => Get.back(),
            icon: Icon(Icons.arrow_back, color: AppColors.whiteColor),
          ),
        ),
      ),
      title: Text(
        title ?? '',
        style: AppTextStyles.medium16.copyWith(color: Colors.black),
      ),
      actions: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: widget,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
