import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class CustomElevatedAndOutlineButton extends StatelessWidget {
  final String elevateText;
  final String outlineText;
  final Function() elevatedOnPressed;
  final Function() outlineOnPressed;

  const CustomElevatedAndOutlineButton({
    super.key, required this.elevateText, required this.outlineText, required this.elevatedOnPressed, required this.outlineOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        spacing: 16.w,
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: outlineOnPressed,
              style: OutlinedButton.styleFrom(),
              child: Text(outlineText),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: elevatedOnPressed,
              child: Text(elevateText),
            ),
          ),
        ],
      ),
    );
  }
}
