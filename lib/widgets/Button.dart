import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  // 자동 생성 가능
  const Button({super.key, required this.text, required this.bgColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(
          text,
          style: TextStyle(fontSize: 20.0, color: textColor),
        ),
      ),
    );
  }
}
