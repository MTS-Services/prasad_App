import 'package:flutter/material.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';

class ShowPasswordRow extends StatelessWidget {
  final bool? isChecked;
  final ValueChanged<bool?>? onChanged;

  const ShowPasswordRow({
    super.key,
    this.isChecked = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Checkbox
        Checkbox(value: isChecked, onChanged: onChanged),
        const SizedBox(width: 8),

        // Text
        Text(
          'Show password',
          style: AppTextStyles.regular16.copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
