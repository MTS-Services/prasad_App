import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerChatRoomController extends GetxController {
  //TODO: Implement CustomerChatRoomController
  final TextEditingController messageController = TextEditingController();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
