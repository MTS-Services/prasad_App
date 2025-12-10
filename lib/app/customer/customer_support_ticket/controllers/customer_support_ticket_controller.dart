import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CustomerSupportTicketController extends GetxController {
  // File/image upload
  final Rx<File?> selectedImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  // Pick image from gallery
  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }

  // Pick image from camera (optional)
  Future<void> takePhoto() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      selectedImage.value = File(photo.path);
    }
  }
}
