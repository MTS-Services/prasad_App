import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../customer/cutomer_notification/widget/back_button_card.dart';
import '../../../data/app_text_styles.dart';
import '../../operator_home/widgets/radius_image.dart';
import '../controllers/operator_feedback_service_controller.dart';
import '../widgets/image_container.dart';
import '../widgets/network_video_player.dart';
import '../widgets/review_message.dart';

class OperatorFeedbackServiceView
    extends GetView<OperatorFeedbackServiceController> {
  const OperatorFeedbackServiceView({super.key});

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
                    Text('Kheda, Gujrat India', style: AppTextStyles.medium16),
                  ],
                ),
                SizedBox(height: 10.h),
                Text('\$400', style: AppTextStyles.bold24),
                SizedBox(height: 10.h),
                Text('Review', style: AppTextStyles.medium16),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(Icons.star, size: 30.r, color: Colors.amber),
                  ],
                ),
                SizedBox(height: 10.h),
                ReviewMessage(
                  text:
                      'I took drone services through this app and I received excellent support. When they sprayed my fields with drones, I was really surprised by the results. This service is very useful and makes farming much easier. For farmers like me, it\'s a real help.',
                ),
                SizedBox(height: 15.h),
                Text('Uploaded Image', style: AppTextStyles.medium20),
                SizedBox(height: 10.h),
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for (int i = 0; i < 4; i++)
                      ImageContainer(
                        imageUrl:
                            'https://images.pexels.com/photos/206893/pexels-photo-206893.jpeg?cs=srgb&dl=pexels-pixabay-206893.jpg&fm=jpg',
                      ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text('Uploaded Video', style: AppTextStyles.medium20),
                SizedBox(height: 10.h),
                // Video Player Container
                NetworkVideoPlayer(
                  videoUrl:
                      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
                ),
                SizedBox(height: 10.h),
                NetworkVideoPlayer(
                  videoUrl:
                      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
