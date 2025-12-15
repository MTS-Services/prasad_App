import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_text_styles.dart';

class DayDropdown extends StatelessWidget {
  final List<String> days;
  final String initialValue;
  final ValueChanged<String?> onChanged;

  const DayDropdown({
    super.key,
    required this.days,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
    );
    return SizedBox(
      width: 200.w,
      child: DropdownButtonFormField(
        elevation: 1,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        dropdownColor: Colors.white,
        initialValue: initialValue,
        style: AppTextStyles.regular12.apply(color: Colors.black),
        items: days
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e, style: AppTextStyles.regular12),
              ),
            )
            .toList(),
        icon: const Icon(Icons.expand_more),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.calendar_today_outlined),
          border: border,
          enabledBorder: border,
          focusedBorder: border,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
