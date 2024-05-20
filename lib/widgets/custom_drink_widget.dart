import 'package:coffee_ui/models/coffee_model.dart';
import 'package:coffee_ui/screens/drink_screen.dart';
import 'package:flutter/material.dart';

class CustomDrinkWidget extends StatelessWidget {
  const CustomDrinkWidget({super.key, required this.coffeeList});

  final CoffeeModel coffeeList;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DrinkScreen.id, arguments: coffeeList);
      },
      child: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              coffeeList.image,
              height: 50,
              width: 50,
            ),
            Text(
              coffeeList.title!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset(
              'assets/image/back 1.png',
              width: 30,
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
