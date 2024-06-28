import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/authenticate/wrapper.dart';

class Test1Result extends StatelessWidget {
  const Test1Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              text = '';
              final_return = 0;
              Get.offAll(const Test1());
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
            '吞嚥自評結果',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '測驗ㄧ結果',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '吞嚥次數：$final_return',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (final_return >= 3) {
                      final_return = 0;
                    } else {
                      final_return = 1;
                    }
                    debugPrint('final_return after Test1Result $final_return');
                    Get.offAll(const Test2());
                  },
                  child: const Text('瞭解了，前往量表'))
            ],
          ),
        ));
  }
}
