import 'package:get/get.dart';

class CustomerServiceLocationController extends GetxController {
  var items = ["Acres", "Square"].obs;
  var selectedValue = RxnString();
void onItemSelected(String? value){
  selectedValue.value = value;
}

}
