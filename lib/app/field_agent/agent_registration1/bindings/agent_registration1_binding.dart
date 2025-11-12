import 'package:get/get.dart';

import '../controllers/agent_registration1_controller.dart';

class AgentRegistration1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentRegistration1Controller>(
      () => AgentRegistration1Controller(),
    );
  }
}
