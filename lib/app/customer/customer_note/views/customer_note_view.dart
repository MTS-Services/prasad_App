import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/customer/customer_bottom_navi_bar/controllers/customer_bottom_navi_bar_controller.dart';
import 'package:prasad/app/customer/customer_bottom_navi_bar/views/customer_bottom_navi_bar_view.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_note_controller.dart';
import '../widget/multi_select_note_dialog.dart';
import '../widget/note_date_picker_field.dart';
import '../widget/note_time_picker_field.dart';

class CustomerNoteView extends GetView<CustomerNoteController> {
  const CustomerNoteView({super.key});

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
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Please note",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      children: const [
                        TextSpan(
                          text:
                              "This request will only be accepted if submitted \n",
                        ),
                        TextSpan(
                          text: "within 48 hours.",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text('Customer Order ID', style: AppTextStyles.bold16),
                SizedBox(height: 5.h),
                MultiSelectNoteDropdown(hintText: 'customer order Id'),
                SizedBox(height: 12.h),
                Text('Reschedule Date', style: AppTextStyles.bold16),
                SizedBox(height: 5.h),
                NoteDatePickerField(
                  initialDate: controller.selectedDate.value,
                  hintText: 'Choose date',
                  onDateChanged: (d) => controller.setDate(d),
                ),
                SizedBox(height: 12.h),
                Text('Time', style: AppTextStyles.bold16),
                SizedBox(height: 5.h),
                NoteTimePickerField(),
                SizedBox(height: 12.h),
                Text('Reschedule Count (auto fill)', style: AppTextStyles.bold16),
                TextFormField(
                  controller: controller.rescheduleCount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "1",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
                SizedBox(height: 12.h),
                Text('Reschedule Reason', style: AppTextStyles.bold16),
                TextFormField(
                  maxLength: 2,
                  controller: controller.rescheduleReason,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting \nindustry.",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
                SizedBox(height: 50.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      bottomController.changeIndex(1);
                      Get.to(()=> CustomerBottomNaviBarView());
                    },
                    child: Text("Request Reschedule"),
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
