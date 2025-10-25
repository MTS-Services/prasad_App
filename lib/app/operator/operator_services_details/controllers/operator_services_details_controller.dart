import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class OperatorServicesDetailsController extends GetxController {
  final RxList<XFile?> selectedImages = List<XFile?>.filled(4, null).obs;
  final RxList<XFile?> selectedVideos = List<XFile?>.filled(2, null).obs;
  final ImagePicker _imagePicker = ImagePicker();

  // Image methods
  Future<void> pickImage(int index) async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 80,
      );
      
      if (image != null) {
        selectedImages[index] = image;
        selectedImages.refresh();
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to pick image: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void removeImage(int index) {
    selectedImages[index] = null;
    selectedImages.refresh();
  }

  // Video methods
  Future<void> pickVideo(int index) async {
    try {
      final XFile? video = await _imagePicker.pickVideo(
        source: ImageSource.gallery,
        maxDuration: Duration(minutes: 10), // Optional: limit video duration
      );
      
      if (video != null) {
        selectedVideos[index] = video;
        selectedVideos.refresh();
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to pick video: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void removeVideo(int index) {
    selectedVideos[index] = null;
    selectedVideos.refresh();
  }

  // Get selected files
  List<XFile> get selectedImagesList {
    return selectedImages.where((image) => image != null).cast<XFile>().toList();
  }

  List<XFile> get selectedVideosList {
    return selectedVideos.where((video) => video != null).cast<XFile>().toList();
  }
}