import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/SwallowTestingPages/test2.dart';
import 'package:project2023/app_description.dart';
import 'package:project2023/check_personal_info.dart';
import 'package:project2023/main.dart';
import 'package:project2023/online_video.dart';
import 'package:project2023/other_resource.dart';
import 'package:project2023/personal_info.dart';
import 'package:project2023/personal_info_show.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ncku_logo.PNG'),
                //fit: BoxFit.cover,
              ),
            ),
          ),
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Get.offAll(AppDescription());
            },
            child: Material(
              child: Container(
                height: 150,
                width: 150,
                color: Colors.blue,
                child: Column(
                  children: [Image.asset('assets/app_image.jpg'), Text('app')],
                ),
              ),
            ),
          ),
        ));
  }
}
