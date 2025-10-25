import 'package:get/get.dart';

class OperatorLanguageController extends GetxController {
  final languages = [
    "Hindi",
    "Gujarati",
    "Punjabi",
    "Tamil",
    "Telugu",
    "Bengali",
    "Sindhi",
    "Urdu"
  ];

  var selectedLanguage = "".obs;

  void selectLanguage(String lang) {
    selectedLanguage.value = lang;
  }
}
