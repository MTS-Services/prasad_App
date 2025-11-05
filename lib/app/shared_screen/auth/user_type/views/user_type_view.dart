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
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 30.h,
                  children: [
                    SizedBox(height: 20.h),
                    Text('Hello there', style: AppTextStyles.bold28),
          
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: TypeCard(
                            title: "Customer",
                            image: ImagePath.customerType,
                            isSelected:
                                controller.selectedType.value == "Customer",
                            onTap: () {
                              // controller.selectType("Customer");
                              Get.toNamed(Routes.SIGN_UP);
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Flexible(
                          child: TypeCard(
                            title: "Field Agent",
                            image: ImagePath.fieldAgentType,
                            isSelected:
                                controller.selectedType.value == "Field Agent",
                            onTap: () {
                              // controller.selectType("Field Agent");
                              Get.toNamed(Routes.SIGN_UP);
                            },
                          ),
                        ),
                      ],
                    ),
          
                    TypeCard(
                      title: "Drone Operator",
                      image: ImagePath.operatorType,
                      isSelected:
                          controller.selectedType.value == "Drone Operator",
                      onTap: () {
                        // controller.selectType("Drone Operator");
                        Get.toNamed(Routes.SIGN_UP);
                      },
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.SIGN_UP),
                        child: Text("Register"),
                      ),
                    ),
          
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
