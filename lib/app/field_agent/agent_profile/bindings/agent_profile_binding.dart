import 'package:get/get.dart';

import '../controllers/agent_profile_controller.dart';

class AgentProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentProfileController>(
      () => AgentProfileController(),
    );
  }
}
