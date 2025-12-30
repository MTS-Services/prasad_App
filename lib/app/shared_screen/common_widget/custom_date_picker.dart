import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomDatePicker extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool? requiredText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  /// NEW → enables calendar on tap
  final bool isDatePicker;

  const CustomDatePicker({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
    this.validator,
    this.isDatePicker = false,
    this.requiredText = false,
  });

  Future<void> _handleTap(BuildContext context) async {
    if (!isDatePicker) return;

    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && controller != null) {
      String formatted =
          "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";

      controller!.text = formatted;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: TextFormField(
        validator: validator,
        controller: controller,
        readOnly: isDatePicker,
        // stop keyboard if date picker
        onTap: () => _handleTap(context),
        // internal calendar
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: AppTextStyles.medium16,
          floatingLabelStyle: AppTextStyles.medium20.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
