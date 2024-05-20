import 'package:coffee_ui/constants.dart';
import 'package:coffee_ui/widgets/drink_additions_widget.dart';
import 'package:flutter/material.dart';

class DrinkSizeBody extends StatelessWidget {
  const DrinkSizeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Size',
            style: TextStyle(fontSize: 22),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: kDrinkSize.length,
              itemBuilder: (context, index) {
                return SizedBox(
                    width: 70,
                    child: DrinkSizeImages(kDrinkSize: kDrinkSize[index]));
              }),
        ),
      ],
    );
  }
}
