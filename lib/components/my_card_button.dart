// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCardButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyCardButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            debugPrint('${text}tapped.');
            onTap;
          },
          child: Container(
            color: Colors.black54,
            height: MediaQuery.of(context).size.height * 0.1,
            child:  Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.white,fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
