import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_text_styles.dart';

enum DeviceStatus { active, idle, charging, maintenance }

class DeviceCard extends StatelessWidget {
  final String title;
  final String deviceId;
  final String userName;
  final int batteryPercent;
  final String timeRemaining;
  final int wifiStrength;
  final int storagePercentFree;
  final DeviceStatus status;

  const DeviceCard({
    super.key,
    required this.title,
    required this.deviceId,
    required this.userName,
    required this.batteryPercent,
    required this.timeRemaining,
    required this.wifiStrength,
    required this.storagePercentFree,
    required this.status,
  });

  // Status Color
  Color _statusColor(DeviceStatus status) {
    switch (status) {
      case DeviceStatus.active:
        return Colors.green;
      case DeviceStatus.idle:
        return Colors.amber;
      case DeviceStatus.charging:
        return Colors.blue;
      case DeviceStatus.maintenance:
        return Colors.red;
    }
  }

  // Status Text
  String _statusText(DeviceStatus status) {
    switch (status) {
      case DeviceStatus.active:
        return "ACTIVE";
      case DeviceStatus.idle:
        return "IDLE";
      case DeviceStatus.charging:
        return "CHARGING";
      case DeviceStatus.maintenance:
        return "MAINTENANCE";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Title Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.medium20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: _statusColor(status),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  _statusText(status),
                  style: AppTextStyles.regular12,
                ),
              ),
            ],
          ),

          SizedBox(height: 4.h),
          Text(deviceId, style: AppTextStyles.regular16),
          SizedBox(height: 8.h),

          Row(
            children: [
              Icon(Icons.person, size: 18.h),
              SizedBox(width: 6.w),
              Text(userName, style: AppTextStyles.medium14),
            ],
          ),

          SizedBox(height: 12.h),

          // battery + time + wifi
          Row(
            children: [
              Icon(Icons.battery_full, color: Colors.green, size: 16),
              SizedBox(width: 4.w),
              Text("$batteryPercent%", style: AppTextStyles.medium14),
              SizedBox(width: 16.w),
              Icon(Icons.access_time, size: 16),
              SizedBox(width: 4.w),
              Text(timeRemaining, style: AppTextStyles.medium14),
              SizedBox(width: 16.w),
              Icon(Icons.wifi, size: 16),
              SizedBox(width: 4.w),
              Text("$wifiStrength%", style: AppTextStyles.medium14),
            ],
          ),

          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Stand By", style: AppTextStyles.regular16),
              Text("$storagePercentFree% free", style: AppTextStyles.regular16),
            ],
          ),
        ],
      ),
    );
  }
}
