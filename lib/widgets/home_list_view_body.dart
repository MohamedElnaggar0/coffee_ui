import 'package:coffee_ui/constants.dart';
import 'package:coffee_ui/widgets/custom_drink_widget.dart';
import 'package:flutter/material.dart';

class HomeListViewBody extends StatelessWidget {
  const HomeListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: kCoffeeList.length,
          itemBuilder: (context, index) {
            return CustomDrinkWidget(coffeeList: kCoffeeList[index]);
          }),
    );
  }
}
