import 'package:coffee_ui/models/coffee_model.dart';
import 'package:flutter/material.dart';

class DrinkSugarImages extends StatelessWidget {
  const DrinkSugarImages({super.key, required this.kDrinkSugar});
  final CoffeeModel kDrinkSugar;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      height: 25,
      kDrinkSugar.image,
    );
  }
}
