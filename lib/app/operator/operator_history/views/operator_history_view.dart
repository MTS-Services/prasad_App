import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/operator_history_controller.dart';
import '../widgets/history_container.dart';

class OperatorHistoryView extends GetView<OperatorHistoryController> {
  const OperatorHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => HistoryContainer(
              serviceName: 'Agro Drone Service',
              serviceDetails:
                  'Precision crop monitoring and field insights powered by aerial data.',
              imageUrl:
                  'https://images.unsplash.com/photo-1521405924368-64c5b84bec60?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZHJvbmVzfGVufDB8fDB8fHww&fm=jpg&q=60&w=3000',
              detailsOnTap: () => Get.toNamed('/operator-feedback-service'),
            ),
          ),
        ),
      ),
    );
  }
}
