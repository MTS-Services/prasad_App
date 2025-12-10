import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomLocationField extends StatelessWidget {
  final String hintText;
  final Function()? onPressed;
  final IconData? icon;
  const CustomLocationField({super.key, required this.hintText, this.onPressed, this.icon,});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.blackColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 4,
              child: Text(
                hintText,
                style: AppTextStyles.medium16.copyWith(
                  color: AppColors.hintColor,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Flexible(
              flex: 1,
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(icon ?? Icons.add_location_alt_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
