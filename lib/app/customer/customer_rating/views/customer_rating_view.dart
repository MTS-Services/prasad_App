import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';
import '../../../operator/operator_feedback_service/widgets/image_container.dart';
import '../../../operator/operator_feedback_service/widgets/network_video_player.dart';
import '../controllers/customer_rating_controller.dart';
import '../widget/review_form.dart';

class CustomerRatingView extends GetView<CustomerRatingController> {
  const CustomerRatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Images", style: AppTextStyles.bold22),
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
                          'https://images.pexels.com/photos/206893/pexels-photo-206893.jpeg?cs=srgb&dl=pexels-pixabay-206893.jpg&fm=jpg%27',
                    ),
                ],
              ),
              SizedBox(height: 10.h),
              Text("Videos", style: AppTextStyles.bold22),
              SizedBox(height: 10.h),
              NetworkVideoPlayer(
                videoUrl:
                    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              ),
              SizedBox(height: 15.h),
              NetworkVideoPlayer(
                videoUrl:
                    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              ),
              SizedBox(height: 15.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Download Order details"),
                ),
              ),
              SizedBox(height: 15.h),
              ReviewForm(
                onRatingChanged: (rating) {
                  print("User rated: $rating stars");
                },
                tipController: controller.tipController,
                reviewController: controller.reviewController,
                onSubmit: () {
                  print("Review: ${controller.reviewController.text}");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
