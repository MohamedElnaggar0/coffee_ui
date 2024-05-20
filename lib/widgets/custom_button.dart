import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.bottomText,
      required this.bottomColor,
      required this.textColor,
      required this.width,
      this.ontap,
      required this.textSize});
  final double textSize;
  final String bottomText;
  final Color textColor;
  final Color bottomColor;
  final int width;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width.toDouble(),
        decoration: BoxDecoration(
          color: bottomColor,
          borderRadius: BorderRadius.circular(30),
          border: const Border(
            left: BorderSide(
              color: Color(0xffB98875),
              width: 3,
            ),
            right: BorderSide(
              color: Color(0xffB98875),
              width: 3,
            ),
            top: BorderSide(
              color: Color(0xffB98875),
              width: 3,
            ),
            bottom: BorderSide(
              color: Color(0xffB98875),
              width: 3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              bottomText,
              style: TextStyle(color: textColor, fontSize: textSize),
            ),
          ),
        ),
      ),
    );
  }
}
