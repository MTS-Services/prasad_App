import 'package:get/get.dart';

import '../controllers/agent_add_customer3_controller.dart';

class AgentAddCustomer3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentAddCustomer3Controller>(
      () => AgentAddCustomer3Controller(),
    );
  }
}
