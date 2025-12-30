import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ServiceBlock {
  RxnString selectedService = RxnString();
  RxList<String> subServices = <String>[].obs;
  RxMap<String, RxBool> selectedSubs = <String, RxBool>{}.obs;
}