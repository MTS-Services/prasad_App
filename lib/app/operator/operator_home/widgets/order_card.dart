import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import 'radius_image.dart';

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
    required this.isAccepted, required this.elevatedText,
  });
  final String headerText,
      imageUrl,
      date,
      time,
      serviceName,
      serviceDetails,
      distance,
      elevatedText,
      price;
  final Function()? acceptOnPress, declineOnpress;
  final bool isAccepted;
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
          RadiusImage(imageUrl: imageUrl,hasHight: false,),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text('Date : $date', style: AppTextStyles.regular16),
              ),
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
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: acceptOnPress,
                  child: Text(elevatedText, style: AppTextStyles.medium16),
                ),
              ),
              if (isAccepted) ...[
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: declineOnpress,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.whiteColor,
                      foregroundColor: AppColors.blackColor,
                      elevation: 0,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(4.r),
                        side: BorderSide(width: 0.5),
                      ),
                    ),
                    child: Text('Decline', style: AppTextStyles.medium16),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
