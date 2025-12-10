import 'package:get/get.dart';

import '../controllers/customer_support_ticket_controller.dart';

class CustomerSupportTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerSupportTicketController>(
      () => CustomerSupportTicketController(),
    );
  }
}
