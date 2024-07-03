import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/swallow.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/authenticate/wrapper.dart';

class SwallowResult extends StatelessWidget {
  const SwallowResult({super.key});

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
              realTimeValue = '3';
              Get.offAll(const Swallow());
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  final_return = 0;
                  realTimeValue = '3';
                  Get.offAll(const Wrapper());
                },
                icon: Icon(
                  Icons.home,
                  size: MediaQuery.of(context).size.height * 0.06,
                ))
          ],
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          title: Text(
            '最終結果',
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
              Text(
                (final_return + int.parse(realTimeValue)).toString(),
                style: const TextStyle(fontSize: 100),
              ),
              if (final_return + int.parse(realTimeValue) == 0)
                const Text(
                  "正常\n您的吞嚥過程十分順利\n應無特別需要處理之問題",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              if (final_return + int.parse(realTimeValue) == 1)
                const Text(
                  "輕度吞嚥困難\n「或許」有吞嚥障礙風險\n若有嗆咳或者吞嚥效率低落\n自覺吞嚥困難程度加劇建議就診",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              if (final_return + int.parse(realTimeValue) == 2)
                const Text(
                  "中度吞嚥困難: 您「可能」有吞嚥障礙風險，可能「偶爾」有嗆咳或者吞嚥效率低落，建議就診",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              if (final_return + int.parse(realTimeValue) == 3)
                const Text(
                  "重度吞嚥困難: 您「極可能」有吞嚥障礙風險，可能「常常」有嗆咳或者吞嚥效率低落，建議就診",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              const SizedBox(
                height: 30,
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
                        shadowColor: const Color.fromARGB(255, 218, 218, 218),
                        elevation: 10.0),
                    onPressed: () {
                      final_return = 0;
                      text = '';
                      test2_result = 0;
                      realTimeValue = '3';
                      Get.offAll(const Wrapper());
                    },
                    child: const Text(
                      '完成\n返回主畫面',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ],
          ),
        ));
  }
}
