import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';

import '../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../controllers/customer_edit_profile_controller.dart';

class CustomerEditProfileView extends GetView<CustomerEditProfileController> {
  const CustomerEditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        widget: GestureDetector(
          onTap: (){
            Get.offAllNamed(Routes.CUSTOMER_BOTTOM_NAVI_BAR);
          },
          child: Text(
            'Save',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.darkGrayColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 75,
                        backgroundColor: AppColors.whiteColor,
                        child: CircleAvatar(
                          radius: 65,
                          backgroundImage: AssetImage(ImagePath.person),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.camera_alt_outlined, size: 20),
                            onPressed: () {
                              // Pick image logic
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text('Name', style: AppTextStyles.regular16),
                  buildTextFormField(controller.nameController, 'name'),
                  const SizedBox(height: 7),
                  Text('Phone number', style: AppTextStyles.regular16),
                  buildTextFormField(controller.phoneController, 'Phone'),
                  const SizedBox(height: 7),
                  Text('Email', style: AppTextStyles.regular16),
                  buildTextFormField(controller.emailController, 'Email'),
                  const SizedBox(height: 7),
                  Text('Geo Radius 1', style: AppTextStyles.regular16),
                  buildTextFormField(
                    controller.geo1Controller,
                    'Geo 1',
                    suffixIcon: Icons.location_on_outlined,
                  ),
                  const SizedBox(height: 7),
                  Text('Geo Radius 2', style: AppTextStyles.regular16),
                  buildTextFormField(
                    controller.geo2Controller,
                    'Geo 2',
                    suffixIcon: Icons.location_on_outlined,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add A Another Geo'),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomDropdownField(
                        label: "Industry*",
                        items: controller.items,
                        selectedValue: controller.selectedValue.value,
                        onChanged: controller.onSelectedItem,
                      ),
                      const SizedBox(height: 7),
                      Text("Sub Services", style: AppTextStyles.medium20),
                      Column(
                        children: List.generate(controller.subServices.length, (
                            index,
                            ) {
                          final sub = controller.subServices[index];
                          return Row(
                            children: [
                              Checkbox(
                                value:
                                controller.isSelectedMap[sub]?.value ?? false,
                                onChanged: (val) =>
                                    controller.checkBoxSelected(sub, val),
                              ),
                              Text(sub),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Text('Password', style: AppTextStyles.regular16),
                  buildTextFormField(
                    controller.passwordController,
                    'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 7),
                  Text('Confirm Password', style: AppTextStyles.regular16),
                  buildTextFormField(
                    controller.confirmPasswordController,
                    'Confirm Password',
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextFormField(
    TextEditingController controller,
    String title, {
    bool obscureText = false,
    IconData? suffixIcon,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        filled: true,
        fillColor: AppColors.whiteColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
