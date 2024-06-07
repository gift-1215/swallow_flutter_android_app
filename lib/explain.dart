import 'package:flutter/material.dart';

class Explain extends StatelessWidget {
  const Explain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '量表說明',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: SizedBox(
            width: 300,
            child: Text(
                style: TextStyle(fontSize: 20),
                "按下吞嚥檢測後，會出現兩個量表，以及最後的錄音，分別回傳0-1的值，最後做加總，以0~3分顯示，數值越高代表越嚴重。\n\n若最後數值大於等於2，建議再由專業醫師診斷。\n\n「其他資源」中有各醫院的掛號網站。")),
      ),
    );
  }
}
