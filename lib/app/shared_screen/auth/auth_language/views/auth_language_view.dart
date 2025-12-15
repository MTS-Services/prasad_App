import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../../../../data/app_colors.dart';
import '../../../common_widget/custom_appbar.dart';
import '../controllers/auth_language_controller.dart';

class AuthLanguageView extends GetView<AuthLanguageController> {
  const AuthLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                SizedBox(height: 16.h),
                Text("Choose Your language", style: AppTextStyles.bold28),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  child: Obx(
                    () => Column(
                      children: controller.languages.map((lang) {
                        bool isSelected =
                            controller.selectedLanguage.value == lang;

                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () => controller.selectLanguage(lang),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: lang,
                                    groupValue: controller.selectedLanguage.value,
                                    onChanged: (value) =>
                                        controller.selectLanguage(value!),
                                    activeColor: Colors.green,
                                  ),
                                  Text(
                                    lang,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.USER_TYPE),
                    child: Text('Next'),
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
