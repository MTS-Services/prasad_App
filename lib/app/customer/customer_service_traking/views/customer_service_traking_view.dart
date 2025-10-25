import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';

import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_service_traking_controller.dart';

class CustomerServiceTrakingView
    extends GetView<CustomerServiceTrakingController> {
  const CustomerServiceTrakingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonCard(
                  onTap: () => Get.back(),
                  color: AppColors.primaryColor,
                  icon: Icons.arrow_back,
                  iconColor: Colors.white,
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.trackingColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildLabelValueRow("Service Order ID:", "#0123456789"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Customer Order ID:", "#0123456789"),
                      Divider(),
                      SizedBox(height: 8.h),
                      Text(
                        "Identification Section",
                        style: AppTextStyles.bold20,
                      ),
                      SizedBox(height: 15.h),
                      buildLabelValueRow("Customer ID:", "#0123456789"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Drone Operator ID:", "#0123456789"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Drone ID:", "#0123456789"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Customer Order ID:", "#0123456789"),
                      SizedBox(height: 8.h),
                      Divider(),
                      SizedBox(height: 8.h),
                      Text(
                        "Service Details Section",
                        style: AppTextStyles.bold20,
                      ),
                      SizedBox(height: 5.h),
                      buildLabelValueRow(
                        "Service Location:",
                        "Marine Drive, Netaji \nSubhash Chandra Bose \nRoad, Churchgate, South \nMumbai",
                      ),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Service Start:", "23-sep-25"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Service End:", "25-sep-25"),
                      SizedBox(height: 8.h),
                      Divider(),
                      SizedBox(height: 8.h),
                      Text("Rescheduling Section", style: AppTextStyles.bold20),
                      SizedBox(height: 15.h),
                      buildLabelValueRow("Rescheduled By:", "Customer (self)"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Rescheduled Date:", "23-sep-25"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Reschedule Count:", "2 time"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow(
                        "Reschedule Reason:",
                        "Lorem Ipsum is \nsimply dummy text \nof the printing and \ntypesetting industry.",
                      ),
                      SizedBox(height: 8.h),
                      Divider(),
                      SizedBox(height: 15.h),
                      Text(
                        "Service Metrics Section",
                        style: AppTextStyles.bold20,
                      ),
                      SizedBox(height: 15.h),
                      buildLabelValueRow("Service Area (in Acres):", "1"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Flight Hours:", "1.5h"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Unit Cost:", "₹150"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow(
                        "Additional Costs:",
                        "No additional cost",
                      ),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Discount Amount:", "₹00"),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Service Order Cost:", "₹150"),
                      SizedBox(height: 8.h),
                      Divider(),
                      SizedBox(height: 15.h),
                      Text(
                        "Payment & Status Section",
                        style: AppTextStyles.bold20,
                      ),
                      SizedBox(height: 5.h),
                      buildLabelValueRow(
                        "Service Order Payment Status:",
                        "Paid",
                      ),
                      SizedBox(height: 8.h),
                      Divider(),
                      SizedBox(height: 15.h),
                      Text("Notes & Confirmation", style: AppTextStyles.bold20),
                      SizedBox(height: 5.h),
                      buildLabelValueRow(
                        "Special Instructions:",
                        "No comments",
                      ),
                      SizedBox(height: 5.h),
                      buildLabelValueRow("Acknowledgment Status:", "Accepted"),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    Get.offNamed("/customer-service-details-map");
                  }, child: Text("Next"),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLabelValueRow(
    String label,
    String value, {
    TextStyle? labelStyle,
    TextStyle? valueStyle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle ?? AppTextStyles.bold15),
        Text(value, style: valueStyle ?? AppTextStyles.medium10),
      ],
    );
  }
}
