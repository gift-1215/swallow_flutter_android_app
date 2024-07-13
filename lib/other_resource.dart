import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2023/authenticate/wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

_TainanHealth() async {
  var url = Uri.parse(
      "https://health.tainan.gov.tw/list.asp?orcaid=6ED4EE62-9397-459A-9E21-7393D8398913");
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

_NCKU_Hospital() async {
  var url = Uri.parse("https://nutr.hosp.ncku.edu.tw/p/412-1005-25221.php");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_TainanHealthManuel() async {
  var url = Uri.parse(
      "https://health.tainan.gov.tw/warehouse/6ED4EE62-9397-459A-9E21-7393D8398913/F_1683616383560e.pdf");
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
          '其他資源連結',
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.045),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 72, 107, 153),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: _NCKU,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 147, 179, 233),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    shadowColor: const Color.fromARGB(255, 218, 218, 218),
                    elevation: 10.0),
                child: const Text(
                  "成大醫院門診",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: _NCKU_Hospital,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 147, 179, 233),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    shadowColor: const Color.fromARGB(255, 218, 218, 218),
                    elevation: 10.0),
                child: const Text(
                  "成大醫院營養部吞嚥困難專區",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: _TainanHealth,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 147, 179, 233),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    shadowColor: const Color.fromARGB(255, 218, 218, 218),
                    elevation: 10.0),
                child: const Text(
                  "台南市衛生局\n咀嚼吞嚥篩檢專區",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: _TainanHealthManuel,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 147, 179, 233),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    shadowColor: const Color.fromARGB(255, 218, 218, 218),
                    elevation: 10.0),
                child: const Text(
                  "台南市衛生局\n吞嚥障礙衛教手冊",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
