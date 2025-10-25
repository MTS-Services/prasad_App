import 'dart:typed_data' show Uint8List;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../controllers/operator_services_details_controller.dart';

class VideoContainer extends StatelessWidget {
  final XFile? videoFile;
  final int index;

  const VideoContainer({super.key, this.videoFile, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.find<OperatorServicesDetailsController>().pickVideo(index),
      child: Container(
        width: double.infinity,
        height: 150.h,
        decoration: BoxDecoration(
          color: const Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: videoFile != null
            ? FutureBuilder<Uint8List?>(
                future: _getThumbnail(videoFile!),
                builder: (context, snapshot) {
                  return Stack(
                    children: [
                      // Video Thumbnail
                      if (snapshot.hasData && snapshot.data != null)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.memory(
                            snapshot.data!,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        )
                      else
                        Container(
                          color: Colors.grey[800],
                          child: Center(
                            child: CircularProgressIndicator(color: Colors.white),
                          ),
                        ),

                      // Dark overlay
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),

                      // Play icon
                      Center(
                        child: Icon(
                          Icons.play_circle_fill,
                          size: 50.h,
                          color: Colors.white,
                        ),
                      ),

                      // Remove button
                      Positioned(
                        top: 8.h,
                        right: 8.w,
                        child: GestureDetector(
                          onTap: () => Get.find<OperatorServicesDetailsController>()
                              .removeVideo(index),
                          child: Container(
                            padding: EdgeInsets.all(4.r),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.close, size: 18.h, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
            : _buildEmptyState(),
      ),
    );
  }

  Future<Uint8List?> _getThumbnail(XFile videoFile) async {
    try {
      return await VideoThumbnail.thumbnailData(
        video: videoFile.path,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 300,
        quality: 50,
      );
    } catch (e) {
      print('Error generating thumbnail: $e');
      return null;
    }
  }

  Widget _buildEmptyState() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.video_camera_back, size: 40.h, color: Colors.grey),
        SizedBox(height: 8.h),
        Text(
          'Add Video ${index + 1}',
          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
        ),
        SizedBox(height: 4.h),
        Text(
          'Tap to upload video',
          style: TextStyle(color: Colors.grey, fontSize: 12.sp),
        ),
      ],
    );
  }
}