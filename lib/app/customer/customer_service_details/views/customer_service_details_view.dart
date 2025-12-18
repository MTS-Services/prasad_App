import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_service_details_controller.dart';

class CustomerServiceDetailsView
    extends GetView<CustomerServiceDetailsController> {
  const CustomerServiceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      ImagePath.fieldAgentType,
      ImagePath.operatorType,
      ImagePath.customerType,
      ImagePath.fieldAgentType,
      ImagePath.operatorType,
      ImagePath.customerType,
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonCard(
                  onTap: () => Get.back(),
                  color: AppColors.primaryColor,
                  icon: Icons.arrow_back,
                  iconColor: Colors.white,
                ),
                SizedBox(height: 15.h),
                CustomCarouselSlider(images: images),
                SizedBox(height: 10.h),
                Text(
                  "Agro Drone Service",
                  style: AppTextStyles.bold20.copyWith(fontSize: 20.sp),
                ),
                Text(
                  "Precision crop monitoring and field insights powered by aerial data.",
                  style: AppTextStyles.light13.copyWith(fontSize: 13.sp),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Price:",
                  style: AppTextStyles.bold20.copyWith(fontSize: 18.sp),
                ),
                Text(
                  "₹150 / Acre",
                  style: AppTextStyles.medium13.copyWith(fontSize: 13.sp),
                ),
                SizedBox(height: 15.h),
                Text(
                  "What’s Included:",
                  style: AppTextStyles.bold20.copyWith(fontSize: 18.sp),
                ),
                _buildRowIncluded(
                  title: "High-resolution aerial imagery of your fields",
                ),
                _buildRowIncluded(
                  title:
                      "NDVI crop health analysis (detect stress, pests, and \nirrigation issues)",
                ),
                _buildRowIncluded(
                  title:
                      "2D/3D field mapping for accurate acreage \nmeasurement",
                ),
                _buildRowIncluded(
                  title:
                      "Detailed PDF & digital reports delivered within 24 \nhours",
                ),
                SizedBox(height: 15.h),
                Text(
                  "Requirements",
                  style: AppTextStyles.bold20.copyWith(fontSize: 18.sp),
                ),
                _buildRowIncluded(
                  title: "Field location (GPS coordinates or map pin)",
                ),
                _buildRowIncluded(title: "Crop type & field size"),
                _buildRowIncluded(
                  title:
                      "Preferred service (Monitoring, Mapping, Spraying, or \nSurveillance)",
                ),
                SizedBox(height: 15.h),
                Text(
                  "Deliverables",
                  style: AppTextStyles.bold20.copyWith(fontSize: 18.sp),
                ),
                _buildRowIncluded(
                  title: "Geo-referenced images & orthomosaic maps",
                ),
                _buildRowIncluded(
                  title: "Crop health reports with actionable insights",
                ),
                _buildRowIncluded(
                  title: "Option for spraying/fertilization (if selected)",
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/customer-schedule");
                    },
                    child: Text(
                      "Book A Service",
                      style: TextStyle(fontSize: 14.sp),
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

  Widget _buildRowIncluded({required String title}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(3.w),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.medium11.copyWith(fontSize: 11.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.images,
  });

  final List images;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images
          .map(
            (item) => Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 200.h,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(seconds: 2),
        viewportFraction: .8,
      ),
    );
  }
}
