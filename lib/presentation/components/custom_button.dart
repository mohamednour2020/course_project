import 'package:course_project/presentation/components/custom_text.dart';
import 'package:course_project/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color? buttonColor;
  Color? textColor;
  String text;
  double? width;
  double? radius;
  Function() onTab;

  CustomButton({super.key, this.width,this.buttonColor,this.textColor,this.radius,required this.onTab, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTab();
      },
      child: Container(
        height: 56,
        width: width??null,

        decoration: BoxDecoration(
            color: buttonColor ?? Colors.teal,
            borderRadius: BorderRadius.circular(radius??8)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            title: text,
            color:textColor?? Colors.white,
          ),
        ),
      ),
    );
  }
}
