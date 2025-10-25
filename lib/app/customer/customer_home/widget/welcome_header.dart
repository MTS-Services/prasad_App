import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_colors.dart';

class WelcomeHeader extends StatelessWidget {
  final String userName;
  final String subtitle;
  final String profileImageUrl;
  final VoidCallback? onNotificationTap;

  const WelcomeHeader({
    super.key,
    required this.userName,
    required this.subtitle,
    required this.profileImageUrl,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, $userName!",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 16.r,
            backgroundImage: AssetImage(profileImageUrl),
          ),
          SizedBox(width: 10.w),
          InkWell(
            onTap: onNotificationTap,
            child: Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: AppColors.notificationColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black54,
                size: 20.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
