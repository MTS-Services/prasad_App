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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 30.h,
              children: [
                SizedBox(height: 20.h,),
                Text('User Type Selection', style: AppTextStyles.bold28),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: TypeCard(
                        title: "Customer",
                        image: ImagePath.customerType,
                        isSelected: true,
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Flexible(
                      child: TypeCard(
                        title: "Field Agent",
                        image: ImagePath.customerType,
                        isSelected: false,
                        onTap: () {
                          print("Customer selected!");
                        },
                      ),
                    ),
                  ],
                ),
                TypeCard(
                  title: "Drone Operator",
                  image: ImagePath.operatorType,
                  isSelected: false,
                  onTap: (){

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
