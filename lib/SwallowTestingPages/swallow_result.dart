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
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              final_return = final_return - int.parse(realTimeValue);
              Get.offAll(const Swallow());
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
            '最終結果',
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
                final_return.toString(),
                style: const TextStyle(fontSize: 100),
              ),
              const Text(
                "吞嚥困難篩檢指標(自評量表，重複唾液吞嚥測試RSST，吞口水之聲音檢測)\n0分: 正常: 您的吞嚥過程十分順利，應無特別需要處理之問題\n1分: 輕度吞嚥困難: 「或許」有吞嚥障礙風險，或許有嗆咳或者吞嚥效率低落，若自覺吞嚥困難程度加劇建議就診\n2分: 中度吞嚥困難: 您「可能」有吞嚥障礙風險，可能「偶爾」有嗆咳或者吞嚥效率低落，建議就診\n3分: 重度吞嚥困難: 您「極可能」有吞嚥障礙風險，可能「常常」有嗆咳或者吞嚥效率低落，建議就診",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    final_return = 0;
                    text = '';
                    test2_result = 0;
                    Get.offAll(const Wrapper());
                  },
                  child: const Text('完成，返回主畫面'))
            ],
          ),
        ));
  }
}
