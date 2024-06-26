import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/swallow.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/authenticate/wrapper.dart';

class Test2Result extends StatelessWidget {
  const Test2Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.offAll(const Test2());
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
            '量表結果',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '量表總分：$test2_result',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.offAll(const Swallow());
                  },
                  child: const Text('瞭解了，前往吞嚥錄音'))
            ],
          ),
        ));
  }
}
