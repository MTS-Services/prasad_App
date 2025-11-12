import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_text_styles.dart';
import '../../operator_home/widgets/radius_image.dart';
import 'details_button.dart';
import 'file_container.dart';

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({
    super.key,
    required this.imageUrl,
    required this.serviceName,
    required this.serviceDetails,
    this.detailsOnTap,
    this.isOperator = true,
    this.orderOnPressed,
  });

  final String imageUrl, serviceName, serviceDetails;
  final Function()? detailsOnTap, orderOnPressed;
  final bool isOperator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: isOperator ? Color(0xffF5F7FA) : Color(0xffF7FFE5),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        spacing: 20.h,
        children: [
          Row(
            spacing: 15.w,
            children: [
              RadiusImage(hasHight: true, height: 80, imageUrl: imageUrl),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(serviceName, style: AppTextStyles.bold24),
                    Text(serviceDetails, style: AppTextStyles.regular12),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  spacing: 10.w,
                  children: [
                    Flexible(flex: 2, child: FileContainer(text: '4 images',)),
                    Expanded(flex: 2, child: FileContainer(text: '2 Videos')),
                    Flexible(flex: 1, child: FileContainer(text: '1 Pdf')),
                  ],
                ),
              ),
              isOperator
                  ? DetailsButton(onTap: detailsOnTap)
                  : Text('8 Sep 2025', style: AppTextStyles.regular12),
            ],
          ),
          if (!isOperator)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: orderOnPressed,
                child: Text('Order Details', style: AppTextStyles.medium16),
              ),
            ),
        ],
      ),
    );
  }
}
