import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/swallow_result.dart';
import 'dart:async';

import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/test2_result.dart';
import 'package:project2023/authenticate/wrapper.dart';

var realTimeValue = '3';
bool waitingServer = false;
bool finalans = false;
String getOnceValue = '0';

class Swallow extends StatefulWidget {
  const Swallow({super.key});

  @override
  State<Swallow> createState() => _SwallowState();
}

class _SwallowState extends State<Swallow> {
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();
  PlatformFile? pickupFile;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) return;

    setState(() {
      pickupFile = result.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.offAll(const Test2Result());
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
        body: FutureBuilder(
          future: _fApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text("something wrong with firebase");
            } else {
              return content();
            }
          },
        ));
  }

  Widget content() {
    DatabaseReference testRef = FirebaseDatabase.instance.ref().child('result');
    testRef.onValue.listen((event) {
      String temp = event.snapshot.value.toString();
      debugPrint("temp = $temp");
      if (temp == "0" || temp == "1") {
        debugPrint('$finalans');
        realTimeValue = temp;
        waitingServer = false;
        testRef.child("/").set("3");
        finalans = true;
        setState(() {});
        //finalans = false;
      }
    });

    Future uploadFile() async {
      setState(() {
        waitingServer = true;
      });

      const path = 'file/test0.wav';
      final file = File(pickupFile!.path!);

      final ref = FirebaseStorage.instance.ref().child(path);
      ref.putFile(file);
      testRef.child("/").set("waitingAI");
    }

    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: selectFile,
            child: const Text("選擇檔案"),
          ),
          if (pickupFile != null)
            SizedBox(
              height: 50,
              child: Container(
                color: const Color.fromARGB(255, 10, 23, 101),
                child: Center(
                  child: Text(
                    pickupFile!.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          if (pickupFile != null)
            ElevatedButton(
              onPressed: uploadFile,
              child: const Text("吞嚥分析"),
            ),
          if (waitingServer == true)
            SizedBox(
              height: 50,
              child: Container(
                color: const Color.fromARGB(255, 10, 23, 101),
                child: const Center(
                  child: Text(
                    "分析中",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          if ((int.parse(realTimeValue)) < 2 && waitingServer == false)
            SizedBox(
              height: 350,
              child: Container(
                color: const Color.fromARGB(255, 10, 23, 101),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'AI 評測結果：',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        realTimeValue,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 200),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    //final_return = final_return + int.parse(realTimeValue);
                    debugPrint('final_return after Swallow $final_return');
                    Get.offAll(const SwallowResult());
                  },
                  child: const Text('完成，查看最終結果')),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "吞嚥指示",
                style: TextStyle(fontSize: 30),
              ),
              const Text(
                "1.請將吞嚥錄製器材插上手機充電孔",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "2.將貼片靠緊脖子吞嚥處",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "3.按下開始與結束，錄製一秒的吞嚥聲",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "4.返回吞嚥App，選擇錄製的wav檔案",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "（資料夾寫有日期）",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "5.分析後靜待結果回傳",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
