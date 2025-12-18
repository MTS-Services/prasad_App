import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/customer/customer_bottom_navi_bar/views/customer_bottom_navi_bar_view.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import '../../../data/app_colors.dart';
import '../../../shared_screen/common_widget/multi_dropdown_button.dart';
import '../../customer_bottom_navi_bar/controllers/customer_bottom_navi_bar_controller.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_schedule_controller.dart';
import '../widget/date_picker_field.dart';
import '../widget/payment_method_widget.dart';
import '../widget/time_picker_field.dart';

class CustomerScheduleView extends GetView<CustomerScheduleController> {
  const CustomerScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomController = Get.put(CustomerBottomNaviBarController());
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
                SizedBox(height: 15),
                Text("Schedule Your Service", style: AppTextStyles.bold22),
                SizedBox(height: 20),
                Text("Calendar", style: AppTextStyles.bold20),
                SizedBox(height: 5),
                DatePickerField(
                  initialDate: controller.selectedDate.value,
                  hintText: 'Choose date',
                  onDateChanged: (d) => controller.setDate(d),
                ),
                SizedBox(height: 15),
                Text("Time", style: AppTextStyles.bold20),
                SizedBox(height: 5),
                TimePickerField(),
                SizedBox(height: 15),
                Text("Select Crops", style: AppTextStyles.bold20),
                SizedBox(height: 5),
                Obx(() {
                  final selected = controller.selectedLocations;
                  return MultiDropdownButton(
                    label: "Crops",
                    items: controller.locations.toList(),
                    selectedItems: selected.toList(),
                    onChanged: (list) {
                      controller.selectedLocations.assignAll(list);
                    },
                  );
                }),
                SizedBox(height: 15),
                Text("Add account info",style: AppTextStyles.bold20),
                PaymentMethodWidget(
                  onPlaceOrder: () {
                    bottomController.changeIndex(1);
                    Get.to(() => const CustomerBottomNaviBarView());
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
