import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/app_description.dart';
import 'package:project2023/check_personal_info.dart';
import 'package:project2023/main.dart';
import 'package:project2023/other_resource.dart';
import 'package:project2023/personal_info.dart';
import 'package:project2023/personal_info_show.dart';
import 'package:project2023/swallow.dart';
import 'package:project2023/test1.dart';
import 'package:project2023/video_player.dart';
import 'package:project2023/videos.dart';

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Swallow App"),
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
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        onPressed: () async {
                          personalInfo = await check_personal_info();

                          if (personalInfo == false) {
                            Get.to(const PersonalInfo());
                          } else {
                            Get.to(const PersonalInfoShow());
                          }
                        },
                        child: const Text("個人資料"),
                      )),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const AppDescription());
                        },
                        child: const Text("App 簡介"),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("量表"),
                      )),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const Test1());
                        },
                        child: const Text("吞嚥檢測"),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const VideoPlayerWidget());
                        },
                        child: const Text("衛教影片"),
                      )),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const OtherResource());
                        },
                        child: const Text("其他資源"),
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
