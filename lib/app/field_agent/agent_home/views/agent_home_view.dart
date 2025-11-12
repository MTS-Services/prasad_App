import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../controllers/agent_home_controller.dart';

class AgentHomeView extends GetView<AgentHomeController> {
  const AgentHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20.h,
              children: [
                Text("Dashboard Overview", style: AppTextStyles.bold32),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.AGENT_ADD_CUSTOMER1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add_alt),
                      Text("Add Customer"),
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => _CustomProgressCard(
                    title: "final String progressBarTitle;",
                    total: '106',
                    progress: '10 %',
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.AGENT_CREATE_SERVICE),
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.contact_page_outlined,
                              size: 60,
                              color: AppColors.primaryColor,
                            ),
                            Text(
                              "Create Service",
                              style: AppTextStyles.regular12.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.diamond_outlined,
                            size: 60,
                            color: AppColors.primaryColor,
                          ),
                          Text(
                            "Diamond",
                            style: AppTextStyles.regular12.copyWith(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
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

class _CustomProgressCard extends StatelessWidget {
  final String? title;
  final String total;
  final String progress;

  const _CustomProgressCard({
    super.key,
    required this.title,
    required this.total,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title!, style: AppTextStyles.regular12),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(total, style: AppTextStyles.bold24),
                ),
                Text(
                  "$progress from last month",
                  style: AppTextStyles.regular12.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.people_outline, color: AppColors.whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
