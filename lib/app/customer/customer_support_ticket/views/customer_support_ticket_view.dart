import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_from_field.dart';

import '../../../data/image_path.dart';
import '../controllers/customer_support_ticket_controller.dart';

class CustomerSupportTicketView
    extends GetView<CustomerSupportTicketController> {
  const CustomerSupportTicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Support Ticket"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Subject", style: AppTextStyles.medium20),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 32.h),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Enter Your Subject"),
                ),
              ),
              Text("Description", style: AppTextStyles.medium20),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 32.h),
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: "Enter Description Here.",
                  ),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: Text("0/2000", style: AppTextStyles.regular12),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: AppColors.darkGrayColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Obx(
                      () => _FileUploadContainer(
                        onTap: controller.pickImage,
                        image: controller.selectedImage.value,
                        uploadType: 'Attach Files',
                      ),
                    ),
                    Text(
                      "Maximum allowed size: 20 MB per attachment.",
                      style: AppTextStyles.regular12,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.h),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        Get.toNamed(Routes.CUSTOMER_SUPPORT_TICKET_INFO),
                    child: Text("Submit"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FileUploadContainer extends StatelessWidget {
  final Function()? onTap;
  final File? image;
  final String uploadType;

  const _FileUploadContainer({
    super.key,
    this.onTap,
    this.image,
    required this.uploadType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: DottedBorder(
          options: RoundedRectDottedBorderOptions(
            radius: Radius.circular(8),
            color: AppColors.borderColorBlue,
            dashPattern: [10, 8],
          ),
          child: Container(
            color: AppColors.whiteColor,
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,
            child: image != null
                ? Image.file(image!, fit: BoxFit.cover)
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImagePath.tokenImageUpload,
                        width: 40.w,
                        height: 40.h,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        uploadType,
                        style: AppTextStyles.medium16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Drag and drop or click here to upload files.',
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.hintColor,
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
