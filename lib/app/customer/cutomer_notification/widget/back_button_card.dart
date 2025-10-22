import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';

class BackButtonCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? color;
  final Color? iconColor;
  final IconData? icon;
  final EdgeInsetsGeometry? padding;

  const BackButtonCard({
    super.key,
    this.onTap,
    this.color,
    this.iconColor,
    this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () => Get.back(),
      borderRadius: BorderRadius.circular(12),
      child: Card(
        color: color ?? AppColors.primaryColor,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(10.0),
          child: Icon(
            icon ?? Icons.arrow_back,
            color: iconColor ?? Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }
}
