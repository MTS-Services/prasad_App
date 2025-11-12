import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/image_path.dart';
import '../../customer_home/widget/custom_search_field.dart';
import '../../customer_home/widget/service_card.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/cutomer_all_services_controller.dart';

class CustomerAllServicesView extends GetView<CutomerAllServicesController> {
  const CustomerAllServicesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonCard(
                  onTap: () => Get.back(),
                  color: AppColors.primaryColor,
                  icon: Icons.arrow_back,
                  iconColor: Colors.white,
                ),
                SizedBox(height: 15.h,),
                CustomSearchField(
                  controller: controller.searchController,
                  onChanged: (value) {
                    print("Searching: $value");
                  },
                ),
                SizedBox(height: 15.h,),
                ListView.builder(
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: ServiceCard(
                        imageUrl: ImagePath.servicePng,
                        title: 'Agro Drone Service',
                        description:
                        'Precision crop monitoring and field insights powered by aerial data.',
                        price: '150',
                        priceUnit: 'Acre',
                        buttonText: 'Book A Service',
                        onPressed: () {
                          Get.toNamed('/customer-service-details');
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
