import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/swallow_result.dart';
import 'dart:async';

import 'package:project2023/SwallowTestingPages/video_player.dart';
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
            icon: Icon(
              Icons.arrow_back,
              size: MediaQuery.of(context).size.height * 0.06,
            ),
            onPressed: () {
              Get.offAll(const VideoPlayerWidget());
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.offAll(const Wrapper());
                },
                icon: Icon(
                  Icons.home,
                  size: MediaQuery.of(context).size.height * 0.06,
                ))
          ],
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          title: Text(
            '吞嚥錄音',
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.040),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 72, 107, 153),
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
          if (waitingServer != true)
            Column(
              children: [
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
                        shadowColor: const Color.fromARGB(255, 218, 218, 218),
                        elevation: 10.0),
                    onPressed: selectFile,
                    child: const Text(
                      "選擇檔案",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          if (pickupFile != null)
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Container(
                    color: const Color.fromARGB(255, 10, 23, 101),
                    child: Center(
                      child: Text(
                        pickupFile!.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          if (pickupFile != null && waitingServer == false)
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton(
                    onPressed: uploadFile,
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 183, 215, 241),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        shadowColor: const Color.fromARGB(255, 218, 218, 218),
                        elevation: 10.0),
                    child: const Text(
                      "吞嚥分析",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          if (waitingServer == true)
            SizedBox(
              height: 50,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'AI 評測結果：',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  realTimeValue,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.4),
                ),
              ],
            ),
          if ((int.parse(realTimeValue)) < 2 && waitingServer == false)
            Column(
              children: [
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
                          shadowColor: const Color.fromARGB(255, 218, 218, 218),
                          elevation: 10.0),
                      onPressed: () {
                        Get.offAll(const SwallowResult());
                      },
                      child: const Text(
                        '完成\n查看最終結果',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      )),
                ),
              ],
            ),
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "吞嚥指示",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "1.請將吞嚥錄製器材插上手機充電孔",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "2.將貼片靠緊脖子吞嚥處",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "3.按下開始與結束，錄製一秒的吞嚥聲",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "4.返回吞嚥App，選擇錄製的wav檔案",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "（資料夾寫有日期）",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "5.分析後靜待結果回傳",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
