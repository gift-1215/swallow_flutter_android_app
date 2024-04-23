import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project2023/authenticate/register_page.dart';

import 'package:project2023/authenticate/wrapper.dart';
import 'package:project2023/main.dart';
import '../components/text_field.dart';
import '../components/my_button.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      userEmail = emailController.text;
      Get.off(const Wrapper());
    } on FirebaseAuthException catch (e) {
      debugPrint("error");
      showErrorMessage();
    }
  }

  void showErrorMessage() {
    Get.dialog(Dialog(
      backgroundColor: Colors.black,
      child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.2,
          child: const Center(
              child: Text(
            'Invalid Email or Password',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ))),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 235, 245),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyTextField(
                    controller: emailController,
                    hintText: "帳號",
                    obscureText: false),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyTextField(
                    controller: passwordController,
                    hintText: "密碼",
                    obscureText: true),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyButton(
                  onTap: signUserIn,
                  text: '登入',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                TextButton(
                    onPressed: () {
                      Get.off(const RegisterPage());
                    },
                    child: const Text(
                      '沒有帳號？ 註冊',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 7, 1, 11)),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
