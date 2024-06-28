import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/app_description.dart';
import 'package:project2023/check_personal_info.dart';
import 'package:project2023/explain.dart';
import 'package:project2023/main.dart';
import 'package:project2023/other_resource.dart';
import 'package:project2023/personal_info.dart';
import 'package:project2023/personal_info_show.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/video_player.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Swallow App",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 227, 228, 228),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            shadowColor: Color.fromARGB(255, 218, 218, 218),
                            elevation: 10.0),
                        onPressed: () async {
                          personalInfo = await check_personal_info();

                          if (personalInfo == false) {
                            Get.to(const PersonalInfo());
                          } else {
                            Get.to(const PersonalInfoShow());
                          }
                        },
                        child: const Text(
                          "個人資料",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      )),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 227, 228, 228),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            shadowColor: Color.fromARGB(255, 218, 218, 218),
                            elevation: 10.0),
                        onPressed: () {
                          Get.to(const AppDescription());
                        },
                        child: const Text(
                          "App簡介",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 233, 215, 205),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        shadowColor: Color.fromARGB(255, 218, 218, 218),
                        elevation: 10.0),
                    onPressed: () {
                      Get.to(const VideoPlayerWidget());
                    },
                    child: const Text(
                      "吞嚥檢測",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 227, 228, 228),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            shadowColor: Color.fromARGB(255, 218, 218, 218),
                            elevation: 10.0),
                        onPressed: () {
                          Get.off(const VideoPlayerWidget());
                        },
                        child: const Text(
                          "衛教影片",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      )),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 227, 228, 228),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            shadowColor: Color.fromARGB(255, 218, 218, 218),
                            elevation: 10.0),
                        onPressed: () {
                          Get.to(const OtherResource());
                        },
                        child: const Text(
                          "其他資源",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
