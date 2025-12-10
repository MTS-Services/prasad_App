import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../data/image_path.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_appbar.dart';
import '../controllers/agent_profile_controller.dart';

class AgentProfileView extends GetView<AgentProfileController> {
  const AgentProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        widget: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.AGENT_EDIT_PROFILE);
          },
          child: Row(
            children: [
              Icon(Icons.edit, color: Colors.red),
              Text(' Edit ', style: TextStyle(color: Colors.red, fontSize: 18)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: AppColors.whiteColor,
                    child: CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage(ImagePath.person),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text('Name', style: AppTextStyles.regular16),
                  buildContainer('Prashad Shikder'),
                  const SizedBox(height: 7),
                  Text('Phone Number', style: AppTextStyles.regular16),
                  buildContainer('089876788'),
                  const SizedBox(height: 7),
                  Text('Email', style: AppTextStyles.regular16),
                  buildContainer('example@gmail.com'),
                  const SizedBox(height: 7),
                  Text('Password', style: AppTextStyles.regular16),
                  buildContainer('*******'),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: () => Get.toNamed(Routes.OPERATOR_LANGUAGE),
                    imagePath: ImagePath.languageIcon,
                    title: 'Language',
                  ),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: () {},
                    imagePath: ImagePath.languageIcon,
                    title: 'Switch To Drone Operator',
                  ),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 24,
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Confirm using Your Fingerprint",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                const Icon(
                                  Icons.fingerprint,
                                  size: 48,
                                  color: Colors
                                      .blueAccent, // or AppColors.primaryColor
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Touch the fingerprint sensor",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    imagePath: ImagePath.languageIcon,
                    title: 'Biometric',
                  ),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: () => Get.offAllNamed(Routes.LOGIN),
                    imagePath: ImagePath.logOut,
                    title: 'Log Out',
                  ),
                ],
              ),
            ),
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

  Widget buildContainer(String text) {
    return Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
