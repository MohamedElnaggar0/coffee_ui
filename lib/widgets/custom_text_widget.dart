import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'It’s Great',
          style: TextStyle(fontSize: 35),
        ),
        Text(
          'Day For Coffee',
          style: TextStyle(
              fontSize: 35,
              color: Color(0xffB98875),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
