import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/user_type_controller.dart';
import '../widget/type_card.dart';

class UserTypeView extends GetView<UserTypeController> {
  const UserTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('User Type Selection', style: AppTextStyles.bold28),
            SizedBox(height: 10.h),
            Row(
              children: [
                TypeCard(
                  title: "Customer",
                  image: ImagePath.customerType,
                  isSelected: true,
                  onTap: () {
                    print("Customer selected!");
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
