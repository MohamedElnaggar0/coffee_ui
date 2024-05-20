import 'package:coffee_ui/widgets/drink_screen_body.dart';
import 'package:flutter/material.dart';

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({
    super.key,
  });

  static String id = 'DrinkScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DrinkRequest(),
    );
  }
}
