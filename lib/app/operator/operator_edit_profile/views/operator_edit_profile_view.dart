import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';

import '../controllers/operator_edit_profile_controller.dart';

class OperatorEditProfileView extends GetView<OperatorEditProfileController> {
  const OperatorEditProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(widget: Text('Save',style: TextStyle(color: AppColors.primaryColor,fontSize: 18),),),
      body:SingleChildScrollView(
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
                  )
                  ,
                  const SizedBox(height: 16),
                  Text('Name', style: AppTextStyles.regular16),
                  buildTextFormField(controller.nameController,'name'),
                  const SizedBox(height: 7),
                  Text('Phone number', style: AppTextStyles.regular16),
                  buildTextFormField(controller.phoneController, 'Phone'),
                  const SizedBox(height: 7),
                  Text('Email', style: AppTextStyles.regular16),
                 buildTextFormField(controller.emailController, 'Email'),
                  const SizedBox(height: 7),
                  Text('Geo Radius 1', style: AppTextStyles.regular16,),
                  buildTextFormField(controller.geo1Controller, 'Geo 1',suffixIcon: Icons.location_on_outlined),
                  const SizedBox(height: 7),
                  Text('Geo Radius 2', style: AppTextStyles.regular16),
                  buildTextFormField(controller.geo2Controller, 'Geo 2',suffixIcon: Icons.location_on_outlined),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add a another Geo'),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text('Industry', style: AppTextStyles.regular16),
                  buildTextFormField(controller.mappingController,'Industry'),
                  const SizedBox(height: 15),
                  Text('Sub category', style: AppTextStyles.medium20),
                  subCategoryContainer('Drone Mapping & surveying(MAP)'),
                  subCategoryContainer('General surveying & Mapping(SRV)'),
                  subCategoryContainer('Ground Collection(GRC)'),
                  subCategoryContainer('Data Analysis(DAT)'),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add a new service  +'),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text('Service Redius', style: AppTextStyles.regular16),
                  buildTextFormField(controller.serviceController,'service'),
                  const SizedBox(height: 7),
                  Text('Old Password', style: AppTextStyles.regular16),
                  buildTextFormField(controller.oldPasswordController,''),
                  const SizedBox(height: 7),
                  Text('Password', style: AppTextStyles.regular16),
                  buildTextFormField(controller.passwordController, 'Password', obscureText: true),
                  const SizedBox(height: 7),
                  Text('Confirm Password', style: AppTextStyles.regular16),
                  buildTextFormField(controller.confirmPasswordController, 'Confirm Password', obscureText: true),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: (){
                    },
                    imagePath: ImagePath.languageIcon,
                    title: 'Asset Type',
                  ),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: (){
                    },
                    imagePath: ImagePath.languageIcon,
                    title: 'Language',
                  ),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: (){
                      showDialog(context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context){
                            return AlertDialog(

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                                    color: Colors.blueAccent, // or AppColors.primaryColor
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
                          });
                    },
                    imagePath: ImagePath.languageIcon,
                    title: 'Biometric',
                  ),
                  const SizedBox(height: 7),
                  listTileContainer(
                    onTap: (){},
                    imagePath: ImagePath.logOut,
                    title: 'Log Out',
                  ),
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
  Widget buildTextFormField(TextEditingController controller ,String title, {bool obscureText = false,IconData? suffixIcon,}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: title,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
          filled: true,
          fillColor: AppColors.whiteColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          )
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

  Widget listTileContainer(
      {required VoidCallback onTap, required String imagePath, required String title}) {
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
