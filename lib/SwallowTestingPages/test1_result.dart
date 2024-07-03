import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/swallow.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/SwallowTestingPages/video_player.dart';
import 'package:project2023/authenticate/wrapper.dart';

class Test1Result extends StatelessWidget {
  const Test1Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: MediaQuery.of(context).size.height * 0.06,
            ),
            onPressed: () {
              text = '';
              if (swallowTimes < 3) final_return -= 1;
              swallowTimes = 0;
              Get.offAll(const VideoPlayerWidget());
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  final_return = 0;
                  Get.offAll(const Wrapper());
                },
                icon: Icon(
                  Icons.home,
                  size: MediaQuery.of(context).size.height * 0.06,
                ))
          ],
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          title: Text(
            '吞嚥自評結果',
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.040),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 72, 107, 153),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'RSST測驗結果',
                style: TextStyle(fontSize: 30),
              ),
              const Text(
                '吞嚥次數：',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '$swallowTimes',
                style: const TextStyle(fontSize: 100),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                swallowTimes >= 3 ? '大於等於3次是正常的！' : '小於3次\n有吞嚥困難的風險喔！',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 183, 215, 241),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        shadowColor: Color.fromARGB(255, 218, 218, 218),
                        elevation: 10.0),
                    onPressed: () {
                      Get.offAll(const Swallow());
                    },
                    child: const Text(
                      textAlign: TextAlign.center,
                      '瞭解\n前往AI錄音辨識',
                      style: TextStyle(fontSize: 30),
                    )),
              )
            ],
          ),
        ));
  }
}
