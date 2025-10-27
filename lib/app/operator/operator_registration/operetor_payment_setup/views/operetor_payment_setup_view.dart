import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';

import '../../../../data/app_colors.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../controllers/operetor_payment_setup_controller.dart';

class OperetorPaymentSetupView extends GetView<OperetorPaymentSetupController> {
  const OperetorPaymentSetupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12.h,
              children: [
                Text('Payment Setup', style: AppTextStyles.bold24),
                Text('Set up secure payment for your earnings', style: AppTextStyles.regular16),
                Text('Need Add payment',style: AppTextStyles.bold24,),
                Text('Add a New Payment Method', style: AppTextStyles.medium16),


                CustomElevatedAndOutlineButton(
                  elevateText: "Submit for verification",
                  outlineText: "Back",
                  elevatedOnPressed: () => Get.toNamed(Routes.OPERETOR_WAITING_CONFIRMATION),
                  outlineOnPressed: () => Get.back(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text(
                        "Already have an account? ",
                        style: AppTextStyles.regular16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text(
                          "Sign In",
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.primaryColor,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
