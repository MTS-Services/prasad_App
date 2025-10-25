import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';

import '../../../operator/operator_history/widgets/history_container.dart';
import '../controllers/customer_history_controller.dart';

class CustomerHistoryView extends GetView<CustomerHistoryController> {
  const CustomerHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Order History", style: AppTextStyles.bold20),
                const SizedBox(height: 15),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => HistoryContainer(
                    isOperator: false,
                    serviceName: 'Agro Drone Service',
                    serviceDetails:
                    'Precision crop monitoring and field insights powered by aerial data.',
                    imageUrl:
                    'https://images.unsplash.com/photo-1521405924368-64c5b84bec60?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZHJvbmVzfGVufDB8fDB8fHww&fm=jpg&q=60&w=3000',
                    orderOnPressed: () => Get.toNamed('/customer-complete-service-details'),
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
