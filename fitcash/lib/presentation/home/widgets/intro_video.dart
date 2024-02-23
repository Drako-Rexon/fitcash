import 'package:chewie/chewie.dart';
import 'package:fitcash/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IntroVideo extends StatefulWidget {
  const IntroVideo({super.key});

  @override
  State<IntroVideo> createState() => IntroVideoState();
}

class IntroVideoState extends State<IntroVideo> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(introVideo);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      showControls: true,
      looping: false,aspectRatio: 16/9,
      allowFullScreen: false,
    );
  }

  @override
  void dispose() {
    _chewieController.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_videoPlayerController.value.isPlaying) {
          _videoPlayerController.pause();
        } else {
          _videoPlayerController.play();
        }
      },
      child: SizedBox(
        height: 250,width: 380,
        child: Expanded(
          child: Card(
            child: Chewie(
              controller: _chewieController,
            ),
          ),
        ),
      ),
    );
  }
}
