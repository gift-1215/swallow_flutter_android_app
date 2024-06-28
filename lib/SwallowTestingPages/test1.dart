import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/test1_result.dart';
import 'package:project2023/authenticate/wrapper.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/SwallowTestingPages/video_player.dart';

bool? isChecked = true;
var final_return = 0;
String text = '';

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
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.off(const VideoPlayerWidget());
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(const Wrapper());
              },
              icon: const Icon(Icons.home))
        ],
        title: const Text(
          '吞嚥自評',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                '請依照影片的動作在30秒內盡可能吞口水，',
                style: TextStyle(fontSize: 25),
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
                        startTimer();
                      } else {
                        _start = 0;
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
                  width: 300,
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '請填寫次數',
                    ),
                    onSubmitted: (String value) {
                      setState(() {
                        text = _controller.text;
                        final_return = int.parse(text);
                      });
                    },
                  )),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        '成功',
                        style: TextStyle(fontSize: 30),
                      ),
                      Checkbox(
                        tristate: false,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value;
                            final_return = 0;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      const Text(
                        '失敗',
                        style: TextStyle(fontSize: 30),
                      ),
                      Checkbox(
                        tristate: false,
                        value: !isChecked!,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = !value!;
                            final_return = 1;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),*/
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (text != '') {
                      print("final return after test1 $final_return");
                      Get.to(const Test1Result());
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              //elevation 可以改變陰影深度
                              elevation: 0,
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
