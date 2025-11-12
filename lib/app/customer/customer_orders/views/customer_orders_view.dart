import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_orders_controller.dart';
import '../widget/orders_card.dart';

class CustomerOrdersView extends GetView<CustomerOrdersController> {
  const CustomerOrdersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // BackButtonCard(
                //   onTap: () => Get.back(),
                //   color: AppColors.primaryColor,
                //   icon: Icons.arrow_back,
                //   iconColor: Colors.white,
                // ),
                SizedBox(height: 10.h,),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                  return OrderCard(
                    orderName: "Crop Spraying",
                    status: "In Progress",
                    date: "Mon, Sep 10",
                    time: "12:00 AM - 3:00 PM",
                    onTrackNow: () {
                      Get.offNamed("/customer-service-traking");
                    },
                  );
                },),
              ],
            ),
          ),
        ),
      )
    );
  }
}
