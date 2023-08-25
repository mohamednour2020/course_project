import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? align;

  const CustomText(
      {required this.title,
      this.align = TextAlign.center,
      this.fontWeight = FontWeight.w400,
      this.fontSize = 16,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize,fontFamily:"AcuminRPro" ),
      textAlign: align,
    );
  }
}
