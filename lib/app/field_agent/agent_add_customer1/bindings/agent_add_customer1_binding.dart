import 'package:get/get.dart';

import '../controllers/agent_add_customer1_controller.dart';

class AgentAddCustomer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentAddCustomer1Controller>(
      () => AgentAddCustomer1Controller(),
    );
  }
}
