import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';
import 'package:video_player/video_player.dart';



enum WaveLoadingVideo {
  single,
  group,
}

class WaveVideoLoader extends StatefulWidget {
  const WaveVideoLoader({
    super.key,
    this.loadingVideo = WaveLoadingVideo.single,
  });

  final WaveLoadingVideo loadingVideo;

  @override
  State<WaveVideoLoader> createState() => _WaveVideoLoaderState();
}

class _WaveVideoLoaderState extends State<WaveVideoLoader> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    final loadingVideoValue = switch (widget.loadingVideo) {
      WaveLoadingVideo.single => Assets.videos.videoLoader1,
      WaveLoadingVideo.group => Assets.videos.videoLoader2,
    };

    _controller = VideoPlayerController.asset(loadingVideoValue)
      ..initialize().then((_) {
        setState(() {});
      });

    _controller
      ..setLooping(true)
      ..play();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? SizedBox(
            width: 370,
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          )
        : Container();
  }
}
