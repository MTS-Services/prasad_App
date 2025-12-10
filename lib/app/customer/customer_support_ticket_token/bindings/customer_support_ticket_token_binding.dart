import 'package:get/get.dart';

import '../controllers/customer_support_ticket_token_controller.dart';

class CustomerSupportTicketTokenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerSupportTicketTokenController>(
      () => CustomerSupportTicketTokenController(),
    );
  }
}
