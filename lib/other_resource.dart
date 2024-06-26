import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_TainanHealth() async {
  var url = Uri.parse("https://health.tainan.gov.tw/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_NCKU() async {
  var url = Uri.parse("https://tandem.hosp.ncku.edu.tw/Tandem/Default.aspx");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class OtherResource extends StatelessWidget {
  const OtherResource({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '其他資源連結',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: _TainanHealth,
              child: Text("台南市衛生局", style: TextStyle(fontSize: 30))),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: _NCKU,
              child: Text(
                "成大醫院門診掛號",
                style: TextStyle(fontSize: 30),
              ))
        ],
      )),
    );
  }
}
