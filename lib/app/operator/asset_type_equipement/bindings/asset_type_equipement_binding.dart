import 'package:get/get.dart';

import '../controllers/asset_type_equipement_controller.dart';

class AssetTypeEquipementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssetTypeEquipementController>(
      () => AssetTypeEquipementController(),
    );
  }
}
