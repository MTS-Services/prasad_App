import 'package:get/get.dart';

import '../controllers/agent_home_controller.dart';

class AgentHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentHomeController>(
      () => AgentHomeController(),
    );
  }
}
