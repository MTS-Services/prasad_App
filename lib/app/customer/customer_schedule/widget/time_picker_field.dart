import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/image_path.dart';

import '../controllers/customer_schedule_controller.dart';


class TimePickerField extends StatelessWidget {
  final String labelText;
  final bool readOnly;

  const TimePickerField({
    Key? key,
    this.labelText = "Select a time",
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CustomerScheduleController>();

    return Obx(() {
      return TextField(
        readOnly: true,
        onTap: () => controller.pickTime(context),
        decoration: InputDecoration(
          hintText: controller.selectedTime.value == null
              ? "Select a time"
              : controller.formattedTime,
          suffixIcon: Image.asset(ImagePath.timePng),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: Colors.black)
          ),
        ),
      );
    });
  }
}
