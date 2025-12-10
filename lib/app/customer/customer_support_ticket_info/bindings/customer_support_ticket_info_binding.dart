import 'package:get/get.dart';

import '../controllers/customer_support_ticket_info_controller.dart';

class CustomerSupportTicketInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerSupportTicketInfoController>(
      () => CustomerSupportTicketInfoController(),
    );
  }
}
