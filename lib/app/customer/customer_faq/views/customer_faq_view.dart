import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/customer_faq_controller.dart';

class CustomerFaqView extends GetView<CustomerFaqController> {
  const CustomerFaqView({super.key});

  final List<Map<String, String>> faqData = const [
    {
      'question': 'What is this app used for?',
      'answer':
      'All practice questions and mock exams follow the official French naturalization test format.',
    },
    {
      'question': 'How does the subscription work?',
      'answer':
      'All practice questions and mock exams follow the official French naturalization test format.',
    },
    {
      'question': 'Can I track my learning progress?',
      'answer':
      'All practice questions and mock exams follow the official French naturalization test format.',
    },
    {
      'question': 'Are the questions similar to the real test?',
      'answer':
      'All practice questions and mock exams follow the official French naturalization test format.',
    },
    {
      'question': 'Can I study offline?',
      'answer':
      'All practice questions and mock exams follow the official French naturalization test format.',
    },
    {
      'question': 'Is there a way to review my mistakes?',
      'answer':
      'All practice questions and mock exams follow the official French naturalization test format.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Column(
              children: [
                SizedBox(
                  height: 36.h,
                ),
                Text(
                  'Frequently Asked Questions (FAQ)',
                  style: AppTextStyles.bold20,
                ),
                SizedBox(height: 15.h),
                ...faqData.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, String> faq = entry.value;
                  return Obx(() {
                    bool isExpanded = controller.expandedIndex.value == index;
                    return Card(
                      color: isExpanded ? AppColors.faqBackground : AppColors.whiteColor,
                      elevation: 3,
                      margin: EdgeInsets.only(bottom: 11.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ExpansionTile(
                        shape: const Border(),
                        collapsedShape: const Border(),
                        // ADD THIS TRAILING PROPERTY - THIS IS WHERE THE CIRCULAR ICON IS
                        trailing: Icon(
                          isExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                          color: AppColors.blackColor,
                          size: 20.sp,
                        ),
                        onExpansionChanged: (expanded) {
                          controller.setExpandedIndex(expanded ? index : -1);
                        },
                        title: Text(
                          faq['question']!.tr,
                          style: AppTextStyles.medium16,
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 7.h,
                            ),
                            child: Text(
                              faq['answer']!.tr,
                              style: AppTextStyles.medium14,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
