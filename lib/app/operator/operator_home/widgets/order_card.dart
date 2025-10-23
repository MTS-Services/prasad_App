import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.headerText,
    required this.imageUrl,
    required this.date,
    required this.time,
    required this.serviceName,
    required this.serviceDetails,
    required this.distance,
    required this.price,
    this.acceptOnPress,
    this.declineOnpress,
  });
  final String headerText,
      imageUrl,
      date,
      time,
      serviceName,
      serviceDetails,
      distance,
      price;
  final Function()? acceptOnPress, declineOnpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.h),
      padding: EdgeInsets.all(25.r),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headerText, style: AppTextStyles.medium20),
          SizedBox(height: 10.h),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(4),
            child: Image.network(imageUrl),
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Date : $date', style: AppTextStyles.regular16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.watch_later_outlined, size: 16.r),
                  SizedBox(width: 5.w), // Spacing
                  Text(time, style: AppTextStyles.regular16),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(serviceName, style: AppTextStyles.medium20),
          SizedBox(height: 10),
          Text(serviceDetails, style: AppTextStyles.regular14),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(Icons.location_on),
              SizedBox(width: 5),
              Text('$distance away from you', style: AppTextStyles.medium16),
            ],
          ),
          Text('\$$price', style: AppTextStyles.bold24),
          SizedBox(height: 10),
          Row(
            spacing: 10.w,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: acceptOnPress,
                  child: Text('Accept Order', style: AppTextStyles.medium16),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: declineOnpress,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.whiteColor,
                    foregroundColor: AppColors.blackColor,
                    elevation: 0,
                    shape: BeveledRectangleBorder(side: BorderSide(width: 0.5)),
                  ),
                  child: Text('Decline', style: AppTextStyles.medium16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
