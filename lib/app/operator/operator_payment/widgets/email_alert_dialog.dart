import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';

class EmailAlertDialog extends StatelessWidget {
  const EmailAlertDialog({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFFECFDF6),
      insetPadding: EdgeInsets.all(10.r),
      title: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: AppTextStyles.regular12.apply(color: AppColors.blackColor),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width, // full width
            child: TextFormField(
              decoration: InputDecoration(hintText: 'example@gmail.com'),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}
