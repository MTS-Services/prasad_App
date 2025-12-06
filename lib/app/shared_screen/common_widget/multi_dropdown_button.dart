import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class MultiDropdownButton extends StatelessWidget {
  final String label;
  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final Function(bool?)? checkBoxOnChanged;
  final String? hintText;
  final bool? isSelected;

  const MultiDropdownButton({
    super.key,
    required this.label,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.hintText,
    this.isSelected,
    this.checkBoxOnChanged,
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
            style: AppTextStyles.regular16.copyWith(fontSize: 14.sp),
          ),
          decoration: InputDecoration(
            labelText: label,
            floatingLabelStyle: AppTextStyles.medium20.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          items: items
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Row(
                    children: [
                      Checkbox(value: isSelected, onChanged: checkBoxOnChanged),
                      Text(
                        item,
                        style: AppTextStyles.regular16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          onChanged: onChanged,
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
    );
  }
}
