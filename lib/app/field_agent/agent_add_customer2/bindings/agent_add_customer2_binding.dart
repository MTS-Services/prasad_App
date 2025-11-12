import 'package:get/get.dart';

import '../controllers/agent_add_customer2_controller.dart';

class AgentAddCustomer2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentAddCustomer2Controller>(
      () => AgentAddCustomer2Controller(),
    );
  }
}
