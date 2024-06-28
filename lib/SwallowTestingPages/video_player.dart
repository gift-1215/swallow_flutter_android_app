// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/authenticate/wrapper.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset('assets/swallow_video.mp4')
          ..initialize().then((_) {
            _videoPlayerController.play();
            setState(() {});
          });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAll(const Wrapper());
            _videoPlayerController.pause();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(Wrapper());
                _videoPlayerController.pause();
              },
              icon: const Icon(Icons.home))
        ],
        title: const Text(
          '請先看完吞嚥指示說明',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: _videoPlayerController.value.isInitialized
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: _videoPlayerController.value.aspectRatio,
                      child: VideoPlayer(_videoPlayerController),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _videoPlayerController.pause();
                            },
                            child: const Icon(Icons.pause)),
                        const SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _videoPlayerController.play();
                            },
                            child: const Icon(Icons.play_arrow)),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Test1());
                        _videoPlayerController.pause();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 35, 74, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                            side: BorderSide(color: Colors.red, width: 3)),
                      ),
                      child: Text(
                        "    我瞭解了!!\n開始RSST測試",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )
                  ],
                )
              : SizedBox(
                  height: 150, width: 150, child: CircularProgressIndicator())),
    );
  }
}
