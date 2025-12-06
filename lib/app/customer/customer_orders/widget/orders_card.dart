import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_elevated_and_outline_button.dart';

class OrderCard extends StatelessWidget {
  final String orderName;
  final String status;
  final String date;
  final String time;
  final VoidCallback onTrackNow;
  final VoidCallback onCancel;

  const OrderCard({
    Key? key,
    required this.orderName,
    required this.status,
    required this.date,
    required this.time,
    required this.onTrackNow, required this.onCancel,
  }) : super(key: key);

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'in progress':
        return Colors.orange;
      case 'completed':
        return Colors.green;
      case 'pending':
        return Colors.grey;
      case 'cancelled':
        return Colors.red;
      default:
        return Colors.blueGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[900] : Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(width: 2, color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Order name:  $orderName",
                  style: AppTextStyles.bold13,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: getStatusColor(status).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: getStatusColor(status),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(Icons.calendar_today_outlined, size: 16.sp),
              SizedBox(width: 6.w),
              Text(date, style: TextStyle(fontSize: 13.sp)),
            ],
          ),
          SizedBox(height: 6.h),
          Row(
            children: [
              Icon(Icons.access_time, size: 16.sp),
              SizedBox(width: 6.w),
              Text(time, style: TextStyle(fontSize: 13.sp)),
            ],
          ),
          SizedBox(height: 14.h),

          CustomElevatedAndOutlineButton(
            elevateText: "Track Now",
            outlineText: "Cancel",
            elevatedOnPressed: onTrackNow,
            outlineOnPressed: onCancel,
          ),
        ],
      ),
    );
  }
}
