import 'package:coffee_ui/models/coffee_model.dart';
import 'package:flutter/material.dart';

class DrinkSizeImages extends StatelessWidget {
  const DrinkSizeImages({super.key, required this.kDrinkSize});
  final CoffeeModel kDrinkSize;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      height: 40,
      kDrinkSize.image,
    );
  }
}
