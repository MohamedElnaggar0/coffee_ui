import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key, this.onPressed, this.text});
  final void Function()? onPressed;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffB98875),
          minimumSize: const Size(35, 29)),
      onPressed: onPressed,
      child: Text(
        text!,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
