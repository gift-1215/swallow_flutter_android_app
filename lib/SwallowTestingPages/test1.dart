import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/test1_result.dart';
import 'package:project2023/authenticate/wrapper.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/SwallowTestingPages/video_player.dart';

bool? isChecked = true;
String text = '';
var swallowTimes = 0;

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  late Timer _timer;
  int _start = 30;

  void startTimer() {
    const oneSec = Duration(milliseconds: 1000);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _start = 30;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void textDispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              size: MediaQuery.of(context).size.height * 0.06),
          onPressed: () {
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
          '反覆唾液吞嚥測試',
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.033),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 72, 107, 153),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                '請依照影片指示\n在30秒內盡可能吞口水',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "$_start",
                style: const TextStyle(fontSize: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_start == 30) {
                        setState(() {
                          _start = 29;
                        });

                        startTimer();
                      } else {
                        setState(() {
                          _start = 0;
                        });
                      }
                      //_timer.reactive;
                    },
                    child: _start == 30
                        ? const Text(
                            "開始",
                            style: TextStyle(fontSize: 30),
                          )
                        : const Text(
                            "重新計時",
                            style: TextStyle(fontSize: 30),
                          ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '請填寫吞嚥次數',
                      labelStyle: TextStyle(fontSize: 25),
                    ),
                    onSubmitted: (String value) {
                      setState(() {
                        text = _controller.text;
                        swallowTimes = int.parse(text);
                        if (swallowTimes < 3) {
                          final_return += 1;
                        }
                      });
                    },
                  )),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (text != '') {
                      Get.to(const Test1Result());
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              //elevation 可以改變陰影深度
                              elevation: 10,
                              title: Text(
                                "請填妥吞嚥次數",
                                textAlign: TextAlign.center,
                              ),
                            );
                          });
                    }
                  },
                  child: const Text(
                    '下一步',
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
