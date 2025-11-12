import 'package:get/get.dart';

class AgentCreateServiceController extends GetxController {
  final servicePrice = ['Admin', 'Agent', 'Self'];

  final selectedServicePrice = RxnString();

  void onServicePriceSelected(String? value) =>
      selectedServicePrice.value = value;
}
