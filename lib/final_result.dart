import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project2023/authenticate/wrapper.dart';
import 'package:project2023/test1.dart';

class FinalResult extends StatelessWidget {
  const FinalResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '最終測試結果',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$final_return',
            style: TextStyle(fontSize: 50),
          ),
          TextButton(
              onPressed: () {
                Get.off(Wrapper());
              },
              child: Text('完成'))
        ],
      )),
    );
  }
}
