import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prasad/app/data/image_path.dart';

class DatePickerField extends StatelessWidget {
  final DateTime? initialDate;
  final ValueChanged<DateTime?>? onDateChanged;
  final String? hintText;
  final double height;

  const DatePickerField({
    super.key,
    this.initialDate,
    this.onDateChanged,
    this.hintText,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    final DateTime? current = initialDate;

    return InkWell(
      onTap: () async {
        final now = DateTime.now();
        final picked = await showDatePicker(
          context: context,
          initialDate: current ?? now,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        if (onDateChanged != null) onDateChanged!(picked);
      },
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade600, width: 1.6),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                current != null
                    ? DateFormat('dd MMM yyyy').format(current)
                    : (hintText ?? 'Choose date'),
                style: TextStyle(
                  fontSize: 14,
                  color: current != null
                      ? Colors.black
                      : Colors.grey.shade600,
                ),
              ),
            ),
             Image.asset(ImagePath.calendarPng)
          ],
        ),
      ),
    );
  }
}
