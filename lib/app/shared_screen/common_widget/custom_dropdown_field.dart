import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomDropdownField extends StatelessWidget {
  final String labelText;
  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final String? hintText;
  final bool? requiredText;

  const CustomDropdownField({
    super.key,
    required this.labelText,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.hintText,
    this.requiredText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField2<String>(
          isExpanded: true,
          value: selectedValue,
          hint: Text(
            hintText ?? "Select $labelText",
            style: AppTextStyles.medium16,
          ),
          decoration: InputDecoration(
            label: Row(
              children: [
                Text(labelText, style: AppTextStyles.medium20),
                if (requiredText!)
                  Text(
                    "*",
                    style: AppTextStyles.medium20.copyWith(color: Colors.red),
                  ),
              ],
            ),
            floatingLabelBehavior: selectedValue != null
                ? FloatingLabelBehavior.always
                : FloatingLabelBehavior.never,
            contentPadding: EdgeInsets.symmetric(vertical: 4.h),
            floatingLabelStyle: AppTextStyles.medium20.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          buttonStyleData: ButtonStyleData(
            decoration: BoxDecoration(),
            height: 36.h,
          ),
          items: items.map((item) {
            return DropdownMenuItem<String>(
              alignment: AlignmentGeometry.topRight,
              value: item,
              child: Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text(
                  item,
                  style: AppTextStyles.regular16,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
