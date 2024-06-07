import 'package:flutter/material.dart';

class AppDescription extends StatelessWidget {
  const AppDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App使用說明',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: SizedBox(
              width: 300,
              child: Text(
                  style: TextStyle(fontSize: 20),
                  "由於存在吞嚥困難可能的患者等發現的時候都來不及了，因此成大資訊系與成大醫院合作拿到一系列已標記吞嚥困難與否的吞嚥聲資料，並以此訓練出準確度高於85％的模型。\n\n再以Flutter設計出App UI介面，讓使用者可以在手機插上量測吞嚥聲的工具後，直接將錄下的吞嚥聲上傳至Firebase Storage，下載至電腦跑模型辨識是否有吞嚥困難後，以Firebase Realtime Datebase回傳結果至手機。\n\n而除了AI模型，使用者介面上也加入了院方提供的吞嚥能力評估工具量表、RSST自評測試，以模擬出病患到門診實際的過程、會被醫生問的問題。\n\n另外App上有附上衛教影片了連結、使用錄製吞嚥聲器材的方式，並提供了使用者登入的方式，能線上記錄醫院所需要的各樣資料（姓名、生理性別、年齡等等）以便後續追蹤。 ")),
        ),
      ),
    );
  }
}
