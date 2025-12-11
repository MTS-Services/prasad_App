import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_dropdown_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_from_field.dart';

import '../controllers/agent_create_service_controller.dart';

class AgentCreateServiceView extends GetView<AgentCreateServiceController> {
  const AgentCreateServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Service', style: AppTextStyles.bold32),
        iconTheme: IconThemeData(color: AppColors.blackColor),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16.h,
            children: [
              CustomTextFormField(
                labelText: "Customer Email",
                hintText: "Enter Customer Email",
              ),
              CustomTextFormField(
                labelText: "Service Title",
                hintText: "Agro Drone Service",
              ),
              CustomDropdownField(
                label: "Service Price",
                hintText: "Select Price",
                items: controller.servicePrice,
                selectedValue: controller.selectedServicePrice.value,
                onChanged: controller.onServicePriceSelected,
              ),
              CustomDropdownField(
                label: 'Industry',
                items: controller.industryItems,
                selectedValue: controller.selectedIndustry.value,
                onChanged: controller.onIndustrySelected,
              ),
              Text("Sub Services", style: AppTextStyles.medium20),
              Column(
                children: List.generate(controller.subServices.length, (index) {
                  final sub = controller.subServices[index];
                  return Row(
                    children: [
                      Checkbox(
                        value: controller.isSelectedMap[sub]?.value ?? false,
                        onChanged: (val) =>
                            controller.checkBoxSelected(sub, val),
                      ),
                      Text(sub),
                    ],
                  );
                }),
              ),
              Text("Service Details", style: AppTextStyles.medium16),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(hintText: "Describe your service"),
              ),
              CustomTextFormField(
                labelText: "Service Location",
                hintText: "Enter service location",
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAllNamed(Routes.AGENT_HOME),
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
