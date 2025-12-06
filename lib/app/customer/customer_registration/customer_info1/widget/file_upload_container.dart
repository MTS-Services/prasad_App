import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';

class FileUploadContainer extends StatelessWidget {
  final Function()? onTap;
  final File? image;
  final String uploadType;

  const FileUploadContainer({super.key, this.onTap, this.image, required this.uploadType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: DottedBorder(
          options: RoundedRectDottedBorderOptions(
            radius: Radius.circular(8),
            color: AppColors.borderColorBlue,
            dashPattern: [10, 8],
          ),
          child: Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,
            child: image != null
                ? Image.file(image!, fit: BoxFit.cover)
                : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImagePath.file,
                  width: 40.w,
                  height: 40.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  uploadType,
                  style: AppTextStyles.medium16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'JPEG files accepted. Max 5MB',
                  style: AppTextStyles.regular14.copyWith(
                    color: AppColors.hintColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
