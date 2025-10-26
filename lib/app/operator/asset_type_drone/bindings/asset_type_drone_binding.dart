import 'package:get/get.dart';

import '../controllers/asset_type_drone_controller.dart';

class AssetTypeDroneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssetTypeDroneController>(
      () => AssetTypeDroneController(),
    );
  }
}
