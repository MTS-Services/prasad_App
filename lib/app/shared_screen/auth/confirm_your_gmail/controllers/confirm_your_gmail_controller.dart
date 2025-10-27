import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ConfirmYourGmailController extends GetxController {
  TextEditingController codeController = TextEditingController();

  void onClose(){
    codeController.dispose();
    super.onClose();
  }

}
