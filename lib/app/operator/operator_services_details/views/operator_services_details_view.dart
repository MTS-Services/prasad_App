import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/customer/cutomer_notification/widget/back_button_card.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/operator/operator_home/widgets/radius_image.dart';

import '../controllers/operator_services_details_controller.dart';
import '../widgets/upload_image_container.dart';
import '../widgets/video_container.dart';

class OperatorServicesDetailsView
    extends GetView<OperatorServicesDetailsController> {
  const OperatorServicesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonCard(onTap: () => Get.back()),
                SizedBox(height: 10.h),
                RadiusImage(
                  hasHight: false,
                  imageUrl:
                      'https://plus.unsplash.com/premium_photo-1681488098851-e3913f3b1908?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFwfGVufDB8fDB8fHww&fm=jpg&q=60&w=3000',
                ),
                SizedBox(height: 10.h),
                Text('Date:05/09/2035', style: AppTextStyles.regular16),
                SizedBox(height: 10.h),
                Text('Agoro Drone Service', style: AppTextStyles.medium20),
                SizedBox(height: 10.h),
                Text(
                  'Precision crop monitoring and field insights powered by aerial data.',
                  style: AppTextStyles.regular16,
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 5),
                    Text('5 km away from you', style: AppTextStyles.medium16),
                  ],
                ),
                SizedBox(height: 10.h),
                Text('\$400', style: AppTextStyles.bold24),
                SizedBox(height: 15.h),
                Text('Customer Details', style: AppTextStyles.medium20),
                SizedBox(height: 10.h),
                Text('Name : Jabed Jahangir', style: AppTextStyles.regular16),
                SizedBox(height: 10.h),
                Text(
                  'Service Location: 123.456.789 , 123.456.789',
                  style: AppTextStyles.regular16,
                ),
                SizedBox(height: 15.h),

                // Images Section
                Text('Upload Image', style: AppTextStyles.medium20),
                SizedBox(height: 15.h),
                Obx(
                  () => GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      for (int i = 0; i < 4; i++)
                        UploadImageContainer(
                          index: i,
                          imageFile: controller.selectedImages.length > i
                              ? controller.selectedImages[i]
                              : null,
                          onTap: () => controller.pickImage(i),
                        ),
                    ],
                  ),
                ),

                SizedBox(height: 20.h),

                // Videos Section
                Text('Upload Videos', style: AppTextStyles.medium20),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () => controller.pickVideo(0),
                  child: Obx(
                    () => VideoContainer(
                      videoFile: controller.selectedVideos.isNotEmpty
                          ? controller.selectedVideos[0]
                          : null,
                      index: 0,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                // Second Video Container
                GestureDetector(
                  onTap: () => controller.pickVideo(1),
                  child: Obx(
                    () => VideoContainer(
                      videoFile: controller.selectedVideos.length > 1
                          ? controller.selectedVideos[1]
                          : null,
                      index: 1,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Request Customer Acknowledgment',
                      style: AppTextStyles.regular16,
                    ),
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
