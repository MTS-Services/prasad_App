import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/operator/operator_registration/operetor_payment_setup/widget/account_payment_info_add.dart';

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
                AccountPaymentInfoAdd(),
                CustomElevatedAndOutlineButton(
                  elevateText: "Submit for verification",
                  outlineText: "Back",
                  elevatedOnPressed: () => Get.offAndToNamed(Routes.OPERATOR_BOTTOM_NAVI_BAR),
                  outlineOnPressed: () => Get.back(),
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
