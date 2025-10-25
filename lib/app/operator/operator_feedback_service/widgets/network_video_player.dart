import 'dart:typed_data';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class NetworkVideoPlayer extends StatefulWidget {
  final String videoUrl;

  const NetworkVideoPlayer({super.key, required this.videoUrl});

  @override
  State<NetworkVideoPlayer> createState() => _NetworkVideoPlayerState();
}

class _NetworkVideoPlayerState extends State<NetworkVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isLoading = true;
  bool _showPlayer = false;
  Uint8List? _thumbnail;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  Future<void> _initializeVideoPlayer() async {
    try {
      _thumbnail = await VideoThumbnail.thumbnailData(
        video: widget.videoUrl,
        imageFormat: ImageFormat.PNG,
        maxWidth: 400, // thumbnail size
        quality: 80,
      );

      _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
      await _videoPlayerController.initialize();

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: false,
        looping: false,
      );

      setState(() => _isLoading = false);
    } catch (e) {
      print('Error initializing video player: $e');
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: _isLoading
          ? Center(child: CircularProgressIndicator(color: Colors.white))
          : !_showPlayer
          ? Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: _thumbnail != null
                      ? Image.memory(
                          _thumbnail!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        )
                      : Container(color: Colors.black26),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() => _showPlayer = true);
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Chewie(controller: _chewieController!),
            ),
    );
  }
}
