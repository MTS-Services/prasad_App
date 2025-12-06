import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

class SplashController extends GetxController {

  @override
  void onReady() {
    super.onReady();
    goNextScreen();
  }

  void goNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.AUTH_LANGUAGE);
    });
  }
}
