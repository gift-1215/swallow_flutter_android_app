import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project2023/final_result.dart';
import 'dart:async';

import 'package:project2023/test1.dart';

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
          title: const Text(
            '吞嚥聲錄音',
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
        if (finalans == true)
          SizedBox(
            height: 500,
            child: Container(
              color: const Color.fromARGB(255, 10, 23, 101),
              child: Center(
                child: Text(
                  (final_return + int.parse(realTimeValue)).toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 300),
                ),
              ),
            ),
          ),
        if (pickupFile != null)
          ElevatedButton(
            onPressed: uploadFile,
            child: const Text("吞嚥分析"),
          ),
        const Text("吞嚥指示"),
      ],
    ));
  }
}
