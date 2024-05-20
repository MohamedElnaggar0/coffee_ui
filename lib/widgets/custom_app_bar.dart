import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            return Navigator.pop(context);
          },
          child: Image.asset(
            'assets/image/back 1.png',
            height: 30,
            width: 30,
          ),
        ),
        const SizedBox(
          width: 115,
        ),
        const Text(
          'Macchiato',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
