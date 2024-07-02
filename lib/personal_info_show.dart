import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project2023/personal_info.dart';
import 'get_user_name.dart';
import 'package:project2023/main.dart';
import 'dart:async';

class PersonalInfoShow extends StatefulWidget {
  const PersonalInfoShow({super.key});

  @override
  State<PersonalInfoShow> createState() => _PersonalInfoShowState();
}

class _PersonalInfoShowState extends State<PersonalInfoShow> {
  List<String> docIDs = [];
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future getDocId() async {
    final User? user = auth.currentUser;
    userEmail = user!.email!;

    await FirebaseFirestore.instance
        .collection(userEmail)
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference);
              docIDs.add(document.id);
            }));
  }

  @override
  void initState() {
    getDocId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: Text(
          '$userEmail已登入',
          style: const TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder(
                future: getDocId(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return GetUserName(
                      documentId: docIDs[0],
                    );
                  } else {
                    return const SizedBox(
                        height: 10,
                        width: 100,
                        child: LinearProgressIndicator());
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const PersonalInfo());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 183, 215, 241),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      shadowColor: Color.fromARGB(255, 218, 218, 218),
                      elevation: 10.0),
                  child: const Text(
                    '編輯個人檔案',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
