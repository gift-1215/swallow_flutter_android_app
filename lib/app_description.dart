import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/authenticate/wrapper.dart';

class AppDescription extends StatelessWidget {
  const AppDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              size: MediaQuery.of(context).size.height * 0.06),
          onPressed: () {
            Get.offAll(const Wrapper());
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
          'App簡介',
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.040),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 72, 107, 153),
      ),
      body: const SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                  style: TextStyle(fontSize: 27),
                  "使用者您好,\n\n手持自評式吞嚥檢測由成大醫院咀嚼吞嚥中心整合照護門診推出，請由主畫面的「吞嚥檢測」按鈕進入，依序完成量表、RSST反覆唾液吞嚥測試、吞嚥聲AI分析，最後會給您的吞嚥狀況一個分數。若有任何需求、需要就醫的管道，歡迎擊點「其他資源」與我們聯絡。\n\n成大醫院咀嚼吞嚥中心祝您早日康復"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
      ),
    );
  }
}
