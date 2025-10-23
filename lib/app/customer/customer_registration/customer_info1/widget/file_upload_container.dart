import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';

class FileUploadContainer extends StatelessWidget {
  const FileUploadContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10.h,
            children: [
              Image.asset(
                ImagePath.file,
                fit: BoxFit.cover,
                width: 40.w,
                height: 40.h,
              ),
              Text(
                'Upload Profile',
                style: AppTextStyles.medium16.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                'JPEG files accepted. Max 100MB',
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.hintColor,
                ),
              ),
              Column(spacing: 10.h, children: []),
            ],
          ),
        ),
      ),
    );
  }
}