import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/swallow.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/SwallowTestingPages/video_player.dart';
import 'package:project2023/authenticate/wrapper.dart';

class Test2Result extends StatelessWidget {
  const Test2Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                size: MediaQuery.of(context).size.height * 0.06),
            onPressed: () {
              final_return = 0;
              Get.offAll(const Test2());
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
            '量表結果',
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
                '量表總分',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '$test2_result',
                style: const TextStyle(fontSize: 100),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                test2_result >= 3 ? '大於等於3分要多注意喔' : '小於3分為正常',
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
                      Get.offAll(const VideoPlayerWidget());
                    },
                    child: const Text(
                      textAlign: TextAlign.center,
                      '瞭解\n前往RSST測試',
                      style: TextStyle(fontSize: 30),
                    )),
              )
            ],
          ),
        ));
  }
}
