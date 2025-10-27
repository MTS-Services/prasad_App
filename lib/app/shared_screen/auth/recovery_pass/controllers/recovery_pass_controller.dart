import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RecoveryPassController extends GetxController {
  final emailController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
