import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final VideoPlayerController videoPlayerController =
      VideoPlayerController.asset('assets/video/tiktok.mp4')..initialize();

  late ChewieController chewieController;
  late Chewie playerWidget;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        autoInitialize: true);

    playerWidget = Chewie(
      controller: chewieController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Center(
                child: Chewie(
      controller: chewieController,
    )));
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
