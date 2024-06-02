import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project2023/swallow.dart';
import 'package:project2023/test2.dart';

bool? isChecked = true;
var final_return = 0;

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '吞嚥自評',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              '請在30秒內\n嘗試做3次的吞嚥',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
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
                });
              },
            ),
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
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: (() => {Get.to(const Test2())}),
                child: const Text(
                  '下一步',
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
