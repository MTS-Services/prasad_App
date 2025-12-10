import 'package:get/get.dart';

class CustomerLanguageController extends GetxController {
  final languages = [
    "English",
    "Hindi",
    "Gujarati",
    "Punjabi",
    "Tamil",
    "Telugu",
    "Bengali",
    "Sindhi",
    "Urdu"
  ];

  var selectedLanguage = "English".obs;

  void selectLanguage(String lang) {
    selectedLanguage.value = lang;
  }
}
