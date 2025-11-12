import 'package:get/get.dart';

import '../controllers/agent_create_service_controller.dart';

class AgentCreateServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentCreateServiceController>(
      () => AgentCreateServiceController(),
    );
  }
}
