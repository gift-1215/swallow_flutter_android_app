import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project2023/SwallowTestingPages/test1.dart';
import 'package:project2023/SwallowTestingPages/test2_result.dart';
import 'package:project2023/authenticate/wrapper.dart';
import 'package:project2023/SwallowTestingPages/swallow.dart';

bool? isChecked10 = false;
bool? isChecked11 = false;
bool? isChecked12 = false;
bool? isChecked13 = false;
bool? isChecked14 = false;
bool? isChecked20 = false;
bool? isChecked21 = false;
bool? isChecked22 = false;
bool? isChecked23 = false;
bool? isChecked24 = false;
bool? isChecked30 = false;
bool? isChecked31 = false;
bool? isChecked32 = false;
bool? isChecked33 = false;
bool? isChecked34 = false;
bool? isChecked40 = false;
bool? isChecked41 = false;
bool? isChecked42 = false;
bool? isChecked43 = false;
bool? isChecked44 = false;
bool? isChecked50 = false;
bool? isChecked51 = false;
bool? isChecked52 = false;
bool? isChecked53 = false;
bool? isChecked54 = false;
bool? isChecked60 = false;
bool? isChecked61 = false;
bool? isChecked62 = false;
bool? isChecked63 = false;
bool? isChecked64 = false;
bool? isChecked70 = false;
bool? isChecked71 = false;
bool? isChecked72 = false;
bool? isChecked73 = false;
bool? isChecked74 = false;
bool? isChecked80 = false;
bool? isChecked81 = false;
bool? isChecked82 = false;
bool? isChecked83 = false;
bool? isChecked84 = false;
bool? isChecked90 = false;
bool? isChecked91 = false;
bool? isChecked92 = false;
bool? isChecked93 = false;
bool? isChecked94 = false;
bool? isChecked100 = false;
bool? isChecked101 = false;
bool? isChecked102 = false;
bool? isChecked103 = false;
bool? isChecked104 = false;
var q1 = -1,
    q2 = -1,
    q3 = -1,
    q4 = -1,
    q5 = -1,
    q6 = -1,
    q7 = -1,
    q8 = -1,
    q9 = -1,
    q10 = -1,
    test2_result = 0;

var final_return = 0;

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              size: MediaQuery.of(context).size.height * 0.06),
          onPressed: () {
            final_return = 0;
            Get.offAll(const Wrapper());
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                final_return = 0;
                Get.offAll(const Wrapper());
              },
              icon: Icon(
                Icons.home,
                size: MediaQuery.of(context).size.height * 0.06,
              ))
        ],
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: Text(
          'EAT-10吞嚥困難篩檢問卷',
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.0245),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 72, 107, 153),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              '0 = 沒有問題\n4 = 問題嚴重',
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      '1.吞嚥問題讓我體重減輕',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked10,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked10 = value;
                                  isChecked11 = false;
                                  isChecked12 = false;
                                  isChecked13 = false;
                                  isChecked14 = false;
                                  if (isChecked10 == true) {
                                    q1 = 0;
                                  } else {
                                    q1 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked11,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked10 = false;
                                  isChecked11 = value;
                                  isChecked12 = false;
                                  isChecked13 = false;
                                  isChecked14 = false;
                                  if (isChecked11 == true) {
                                    q1 = 1;
                                  } else {
                                    q1 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked12,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked10 = false;
                                  isChecked11 = false;
                                  isChecked12 = value;
                                  isChecked13 = false;
                                  isChecked14 = false;
                                  if (isChecked12 == true) {
                                    q1 = 2;
                                  } else {
                                    q1 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked13,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked10 = false;
                                  isChecked11 = false;
                                  isChecked12 = false;
                                  isChecked13 = value;
                                  isChecked14 = false;
                                  if (isChecked13 == true) {
                                    q1 = 3;
                                  } else {
                                    q1 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked14,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked10 = false;
                                  isChecked11 = false;
                                  isChecked12 = false;
                                  isChecked13 = false;
                                  isChecked14 = value;
                                  if (isChecked14 == true) {
                                    q1 = 4;
                                  } else {
                                    q1 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '2.吞嚥問題讓我不能像以前一樣外出用餐',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked20,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked20 = value;
                                  isChecked21 = false;
                                  isChecked22 = false;
                                  isChecked23 = false;
                                  isChecked24 = false;
                                  if (isChecked20 == true) {
                                    q2 = 0;
                                  } else {
                                    q2 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked21,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked20 = false;
                                  isChecked21 = value;
                                  isChecked22 = false;
                                  isChecked23 = false;
                                  isChecked24 = false;
                                  if (isChecked21 == true) {
                                    q2 = 1;
                                  } else {
                                    q2 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked22,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked20 = false;
                                  isChecked21 = false;
                                  isChecked22 = value;
                                  isChecked23 = false;
                                  isChecked24 = false;
                                  if (isChecked22 == true) {
                                    q2 = 2;
                                  } else {
                                    q2 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked23,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked20 = false;
                                  isChecked21 = false;
                                  isChecked22 = false;
                                  isChecked23 = value;
                                  isChecked24 = false;
                                  if (isChecked23 == true) {
                                    q2 = 3;
                                  } else {
                                    q2 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked24,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked20 = false;
                                  isChecked21 = false;
                                  isChecked22 = false;
                                  isChecked23 = false;
                                  isChecked24 = value;
                                  if (isChecked24 == true) {
                                    q2 = 4;
                                  } else {
                                    q2 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '3.喝飲料時要花很多力氣',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked30,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked30 = value;
                                  isChecked31 = false;
                                  isChecked32 = false;
                                  isChecked33 = false;
                                  isChecked34 = false;
                                  if (isChecked30 == true) {
                                    q3 = 0;
                                  } else {
                                    q3 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked31,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked30 = false;
                                  isChecked31 = value;
                                  isChecked32 = false;
                                  isChecked33 = false;
                                  isChecked34 = false;
                                  if (isChecked31 == true) {
                                    q3 = 1;
                                  } else {
                                    q3 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked32,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked30 = false;
                                  isChecked31 = false;
                                  isChecked32 = value;
                                  isChecked33 = false;
                                  isChecked34 = false;
                                  if (isChecked32 == true) {
                                    q3 = 2;
                                  } else {
                                    q3 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked33,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked30 = false;
                                  isChecked31 = false;
                                  isChecked32 = false;
                                  isChecked33 = value;
                                  isChecked34 = false;
                                  if (isChecked33 == true) {
                                    q3 = 3;
                                  } else {
                                    q3 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked34,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked30 = false;
                                  isChecked31 = false;
                                  isChecked32 = false;
                                  isChecked33 = false;
                                  isChecked34 = value;
                                  if (isChecked34 == true) {
                                    q3 = 4;
                                  } else {
                                    q3 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '4.吃固體食物時要花很多力氣',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked40,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked40 = value;
                                  isChecked41 = false;
                                  isChecked42 = false;
                                  isChecked43 = false;
                                  isChecked44 = false;
                                  if (isChecked40 == true) {
                                    q4 = 0;
                                  } else {
                                    q4 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked41,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked40 = false;
                                  isChecked41 = value;
                                  isChecked42 = false;
                                  isChecked43 = false;
                                  isChecked44 = false;
                                  if (isChecked41 == true) {
                                    q4 = 1;
                                  } else {
                                    q4 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked42,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked40 = false;
                                  isChecked41 = false;
                                  isChecked42 = value;
                                  isChecked43 = false;
                                  isChecked44 = false;
                                  if (isChecked42 == true) {
                                    q4 = 2;
                                  } else {
                                    q4 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked43,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked40 = false;
                                  isChecked41 = false;
                                  isChecked42 = false;
                                  isChecked43 = value;
                                  isChecked44 = false;
                                  if (isChecked43 == true) {
                                    q4 = 3;
                                  } else {
                                    q4 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked44,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked40 = false;
                                  isChecked41 = false;
                                  isChecked42 = false;
                                  isChecked43 = false;
                                  isChecked44 = value;
                                  if (isChecked44 == true) {
                                    q4 = 4;
                                  } else {
                                    q4 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '5.吞藥丸時要花很多力氣',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked50,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked50 = value;
                                  isChecked51 = false;
                                  isChecked52 = false;
                                  isChecked53 = false;
                                  isChecked54 = false;
                                  if (isChecked50 == true) {
                                    q5 = 0;
                                  } else {
                                    q5 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked51,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked50 = false;
                                  isChecked51 = value;
                                  isChecked52 = false;
                                  isChecked53 = false;
                                  isChecked54 = false;
                                  if (isChecked51 == true) {
                                    q5 = 1;
                                  } else {
                                    q5 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked52,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked50 = false;
                                  isChecked51 = false;
                                  isChecked52 = value;
                                  isChecked53 = false;
                                  isChecked54 = false;
                                  if (isChecked52 == true) {
                                    q5 = 2;
                                  } else {
                                    q5 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked53,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked50 = false;
                                  isChecked51 = false;
                                  isChecked52 = false;
                                  isChecked53 = value;
                                  isChecked54 = false;
                                  if (isChecked53 == true) {
                                    q5 = 3;
                                  } else {
                                    q5 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked54,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked50 = false;
                                  isChecked51 = false;
                                  isChecked52 = false;
                                  isChecked53 = false;
                                  isChecked54 = value;
                                  if (isChecked54 == true) {
                                    q5 = 4;
                                  } else {
                                    q5 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '6.吞嚥的過程會引起疼痛',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked60,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked60 = value;
                                  isChecked61 = false;
                                  isChecked62 = false;
                                  isChecked63 = false;
                                  isChecked64 = false;
                                  if (isChecked60 == true) {
                                    q6 = 0;
                                  } else {
                                    q6 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked61,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked60 = false;
                                  isChecked61 = value;
                                  isChecked62 = false;
                                  isChecked63 = false;
                                  isChecked64 = false;
                                  if (isChecked61 == true) {
                                    q6 = 1;
                                  } else {
                                    q6 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked62,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked60 = false;
                                  isChecked61 = false;
                                  isChecked62 = value;
                                  isChecked63 = false;
                                  isChecked64 = false;
                                  if (isChecked62 == true) {
                                    q6 = 2;
                                  } else {
                                    q6 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked63,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked60 = false;
                                  isChecked61 = false;
                                  isChecked62 = false;
                                  isChecked63 = value;
                                  isChecked64 = false;
                                  if (isChecked63 == true) {
                                    q6 = 3;
                                  } else {
                                    q6 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked64,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked60 = false;
                                  isChecked61 = false;
                                  isChecked62 = false;
                                  isChecked63 = false;
                                  isChecked64 = value;
                                  if (isChecked64 == true) {
                                    q6 = 4;
                                  } else {
                                    q6 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '7.吞嚥問題讓我無法享受用餐',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked70,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked70 = value;
                                  isChecked71 = false;
                                  isChecked72 = false;
                                  isChecked73 = false;
                                  isChecked74 = false;
                                  if (isChecked70 == true) {
                                    q7 = 0;
                                  } else {
                                    q7 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked71,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked70 = false;
                                  isChecked71 = value;
                                  isChecked72 = false;
                                  isChecked73 = false;
                                  isChecked74 = false;
                                  if (isChecked71 == true) {
                                    q7 = 1;
                                  } else {
                                    q7 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked72,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked70 = false;
                                  isChecked71 = false;
                                  isChecked72 = value;
                                  isChecked73 = false;
                                  isChecked74 = false;
                                  if (isChecked72 == true) {
                                    q7 = 2;
                                  } else {
                                    q7 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked73,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked70 = false;
                                  isChecked71 = false;
                                  isChecked72 = false;
                                  isChecked73 = value;
                                  isChecked74 = false;
                                  if (isChecked73 == true) {
                                    q7 = 3;
                                  } else {
                                    q7 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked74,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked70 = false;
                                  isChecked71 = false;
                                  isChecked72 = false;
                                  isChecked73 = false;
                                  isChecked74 = value;
                                  if (isChecked74 == true) {
                                    q7 = 4;
                                  } else {
                                    q7 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '8.進食後會感到有東西黏在喉嚨上',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked80,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked80 = value;
                                  isChecked81 = false;
                                  isChecked82 = false;
                                  isChecked83 = false;
                                  isChecked84 = false;
                                  if (isChecked80 == true) {
                                    q8 = 0;
                                  } else {
                                    q8 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked81,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked80 = false;
                                  isChecked81 = value;
                                  isChecked82 = false;
                                  isChecked83 = false;
                                  isChecked84 = false;
                                  if (isChecked81 == true) {
                                    q8 = 1;
                                  } else {
                                    q8 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked82,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked80 = false;
                                  isChecked81 = false;
                                  isChecked82 = value;
                                  isChecked83 = false;
                                  isChecked84 = false;
                                  if (isChecked82 == true) {
                                    q8 = 2;
                                  } else {
                                    q8 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked83,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked80 = false;
                                  isChecked81 = false;
                                  isChecked82 = false;
                                  isChecked83 = value;
                                  isChecked84 = false;
                                  if (isChecked83 == true) {
                                    q8 = 3;
                                  } else {
                                    q8 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked84,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked80 = false;
                                  isChecked81 = false;
                                  isChecked82 = false;
                                  isChecked83 = false;
                                  isChecked84 = value;
                                  if (isChecked84 == true) {
                                    q8 = 4;
                                  } else {
                                    q8 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '9.進食的時候會咳嗽',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked90,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked90 = value;
                                  isChecked91 = false;
                                  isChecked92 = false;
                                  isChecked93 = false;
                                  isChecked94 = false;
                                  if (isChecked90 == true) {
                                    q9 = 0;
                                  } else {
                                    q9 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked91,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked90 = false;
                                  isChecked91 = value;
                                  isChecked92 = false;
                                  isChecked93 = false;
                                  isChecked94 = false;
                                  if (isChecked91 == true) {
                                    q9 = 1;
                                  } else {
                                    q9 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked92,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked90 = false;
                                  isChecked91 = false;
                                  isChecked92 = value;
                                  isChecked93 = false;
                                  isChecked94 = false;
                                  if (isChecked92 == true) {
                                    q9 = 2;
                                  } else {
                                    q9 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked93,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked90 = false;
                                  isChecked91 = false;
                                  isChecked92 = false;
                                  isChecked93 = value;
                                  isChecked94 = false;
                                  if (isChecked93 == true) {
                                    q9 = 3;
                                  } else {
                                    q9 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked94,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked90 = false;
                                  isChecked91 = false;
                                  isChecked92 = false;
                                  isChecked93 = false;
                                  isChecked94 = value;
                                  if (isChecked94 == true) {
                                    q9 = 4;
                                  } else {
                                    q9 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '10.吞嚥的過程讓我感到有壓力',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked100,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked100 = value;
                                  isChecked101 = false;
                                  isChecked102 = false;
                                  isChecked103 = false;
                                  isChecked104 = false;
                                  if (isChecked100 == true) {
                                    q10 = 0;
                                  } else {
                                    q10 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked101,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked100 = false;
                                  isChecked101 = value;
                                  isChecked102 = false;
                                  isChecked103 = false;
                                  isChecked104 = false;
                                  if (isChecked101 == true) {
                                    q10 = 1;
                                  } else {
                                    q10 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked102,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked100 = false;
                                  isChecked101 = false;
                                  isChecked102 = value;
                                  isChecked103 = false;
                                  isChecked104 = false;
                                  if (isChecked102 == true) {
                                    q10 = 2;
                                  } else {
                                    q10 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked103,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked100 = false;
                                  isChecked101 = false;
                                  isChecked102 = false;
                                  isChecked103 = value;
                                  isChecked104 = false;
                                  if (isChecked103 == true) {
                                    q10 = 3;
                                  } else {
                                    q10 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(fontSize: 20),
                            ),
                            Checkbox(
                              tristate: false,
                              value: isChecked104,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked100 = false;
                                  isChecked101 = false;
                                  isChecked102 = false;
                                  isChecked103 = false;
                                  isChecked104 = value;
                                  if (isChecked104 == true) {
                                    q10 = 4;
                                  } else {
                                    q10 = -1;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (q1 != -1 &&
                                  q2 != -1 &&
                                  q3 != -1 &&
                                  q4 != -1 &&
                                  q5 != -1 &&
                                  q6 != -1 &&
                                  q7 != -1 &&
                                  q8 != -1 &&
                                  q9 != -1 &&
                                  q10 != -1) {
                                test2_result = q1 +
                                    q2 +
                                    q3 +
                                    q4 +
                                    q5 +
                                    q6 +
                                    q7 +
                                    q8 +
                                    q9 +
                                    q10;
                                if (test2_result >= 3) {
                                  final_return = 1;
                                } else {
                                  final_return = 0;
                                }
                                debugPrint(
                                    "final return after test2:$final_return");
                                Get.offAll(const Test2Result());
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const AlertDialog(
                                        //elevation 可以改變陰影深度
                                        elevation: 10,
                                        title: Text("每個問題都要回答喔～"),
                                      );
                                    });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 183, 215, 241),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              shadowColor: Color.fromARGB(255, 218, 218, 218),
                              elevation: 10.0),
                          child: const Text(
                            '完成',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
