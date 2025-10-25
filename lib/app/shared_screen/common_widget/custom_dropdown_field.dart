import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomDropdownField extends StatelessWidget {
  final String label;
  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final String? hintText;

  const CustomDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.medium16 .copyWith(
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: 8.h),

        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            value: selectedValue,
            hint: Text(
              hintText ?? "Select $label",
              style: AppTextStyles.regular16.copyWith(
                color: Colors.grey.shade500,
                fontSize: 14.sp,
              ),
            ),
            items: items
                .map(
                  (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: AppTextStyles.regular16,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            )
                .toList(),
            onChanged: onChanged,
            buttonStyleData: ButtonStyleData(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.borderColorBlue, width: 1.w),
              ),
            ),

            iconStyleData: IconStyleData(
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 22.sp,
                color: AppColors.blackColor,
              ),
            ),

            dropdownStyleData: DropdownStyleData(
              maxHeight: 200.h,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.r,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
