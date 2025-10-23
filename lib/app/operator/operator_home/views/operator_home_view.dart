import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/customer/customer_home/widget/section_header.dart';
import 'package:prasad/app/customer/customer_home/widget/welcome_header.dart';
import 'package:prasad/app/data/image_path.dart';

import '../controllers/operator_home_controller.dart';
import '../widgets/order_card.dart';

class OperatorHomeView extends GetView<OperatorHomeController> {
  const OperatorHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                WelcomeHeader(
                  userName: 'Biddhut Paul',
                  subtitle:
                      'Here is what is happening with your service today.',
                  profileImageUrl: ImagePath.fieldAgentType,
                  onNotificationTap: () {
                    Get.toNamed('/customer-notification');
                  },
                ),
                SizedBox(height: 20.h),
                SectionHeader(
                  title: 'Available Orders',
                  onTap: () {
                    Get.toNamed('/operator-all-services');
                  },
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => OrderCard(
                    serviceName: 'Agro Drone Service',
                    serviceDetails:
                        'Precision crop monitoring and field insights powered by aerial data',
                    distance: '5 km',
                    price: '400',
                    time: '10 am - 5 pm',
                    date: '05/05/2025',
                    headerText: 'ORD-YYYYMMDD-XXXX',
                    imageUrl:
                        'https://media.istockphoto.com/id/1135210442/vector/blue-political-world-map-with-country-borders-and-white-state-name-labels-hand-drawn.jpg?s=612x612&w=0&k=20&c=lgrbr-46iQQUBTcCHau3I_JT2Zfsjoauw43iw6wwCwY=',
                    acceptOnPress: () {},
                    declineOnpress: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
