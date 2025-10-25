import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_support_controller.dart';

class CustomerSupportView extends GetView<CustomerSupportController> {
  const CustomerSupportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
            child: Column(
              children: [
                BackButtonCard(
                  onTap: () => Get.back(),
                  color: AppColors.primaryColor,
                  icon: Icons.arrow_back,
                  iconColor: Colors.white,
                ),

              ],
            ),
          ),
        )
    );
  }
}
