import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/authenticate/wrapper.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class OnlineVideoPage extends StatefulWidget {
  const OnlineVideoPage({super.key});

  @override
  State<OnlineVideoPage> createState() => _OnlineVideoPageState();
}

class _OnlineVideoPageState extends State<OnlineVideoPage> {
  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: 'jm3eLFYf2x8?si=PciMNAAr92UmBAw6',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              size: MediaQuery.of(context).size.height * 0.06),
          onPressed: () {
            Get.offAll(const Wrapper());
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(const Wrapper());
              },
              icon: Icon(
                Icons.home,
                size: MediaQuery.of(context).size.height * 0.06,
              ))
        ],
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: Text(
          '吞嚥健口操',
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.047),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 72, 107, 153),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: false,
                progressIndicatorColor: Colors.cyanAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Controls extends StatelessWidget {
  ///
  const Controls();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _space,
        ],
      ),
    );
  }

  Widget get _space => const SizedBox(height: 10);
}
