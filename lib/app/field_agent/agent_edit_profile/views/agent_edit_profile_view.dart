import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../data/image_path.dart';
import '../../../shared_screen/common_widget/custom_appbar.dart';
import '../controllers/agent_edit_profile_controller.dart';

class AgentEditProfileView extends GetView<AgentEditProfileController> {
  const AgentEditProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        widget: Text(
          'Save',
          style: TextStyle(color: AppColors.primaryColor, fontSize: 18),
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
                  Text('Old Password', style: AppTextStyles.regular16),
                  buildTextFormField(controller.oldPasswordController, ''),
                  const SizedBox(height: 7),
                  Text('New Password', style: AppTextStyles.regular16),
                  buildTextFormField(
                    controller.passwordController,
                    'New Password',
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

  Widget subCategoryContainer(String subtext) {
    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.white300),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                subtext,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: 5),
              const Text('|'),
              const SizedBox(width: 5),
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.blackColor),
                ),
                child: const Icon(Icons.close, size: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listTileContainer({
    required VoidCallback onTap,
    required String imagePath,
    required String title,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(imagePath, scale: 4),
            const SizedBox(width: 12),
            Expanded(child: Text(title, style: AppTextStyles.medium16)),
            const Icon(Icons.arrow_forward_ios, size: 15),
          ],
        ),
      ),
    );
  }
}
