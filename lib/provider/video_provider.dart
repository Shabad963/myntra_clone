import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';



class VideoPlayerState extends ChangeNotifier {
  VideoPlayerController? controller;

  void initialize(String url) {
    controller = VideoPlayerController.asset(url);
    controller!.initialize().then((_) {
      notifyListeners();
    });
  }


  void play() {
    controller?.play();
    controller?.setLooping(true);
    notifyListeners();
  }

  void pause() {
    controller?.pause();
    notifyListeners();
  }

  void dispose() {
    controller?.dispose();
  }
}
