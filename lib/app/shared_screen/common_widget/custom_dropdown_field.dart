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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField2<String>(
          isExpanded: true,
          value: selectedValue,
          hint: Text(
            hintText ?? "Select $label",
            style: AppTextStyles.medium16,
          ),
          decoration: InputDecoration(
            labelText: label,
            floatingLabelBehavior: selectedValue != null
                ? FloatingLabelBehavior.always
                : FloatingLabelBehavior.never,
            contentPadding: EdgeInsets.symmetric(
              vertical: 8.h,
            ),
            floatingLabelStyle: AppTextStyles.medium20.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: AppTextStyles.regular16,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
