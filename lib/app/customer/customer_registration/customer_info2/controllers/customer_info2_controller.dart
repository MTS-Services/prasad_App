import 'package:get/get.dart';

class CustomerInfo2Controller extends GetxController {
  var items = ['Mapping','Surveying'].obs;
  var selectedValue =  RxnString();

  void onSelectedItem(String? value){
    selectedValue.value = value;
  }

}
