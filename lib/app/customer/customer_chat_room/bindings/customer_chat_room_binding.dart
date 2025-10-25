import 'package:get/get.dart';

import '../controllers/customer_chat_room_controller.dart';

class CustomerChatRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerChatRoomController>(
      () => CustomerChatRoomController(),
    );
  }
}
