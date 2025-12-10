import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/customer/cutomer_notification/widget/back_button_card.dart';

import '../../operator_home/widgets/order_card.dart';
import '../controllers/operator_all_services_controller.dart';

class OperatorAllServicesView extends GetView<OperatorAllServicesController> {
  const OperatorAllServicesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonCard(onTap: () => Get.back()),
                SizedBox(height: 10.h),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => OrderCard(
                    elevatedText: "Accept Service",
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
                    isAccepted: true,
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
