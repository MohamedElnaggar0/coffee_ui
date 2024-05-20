import 'package:coffee_ui/constants.dart';
import 'package:coffee_ui/widgets/drink_add_sugar_images.dart';
import 'package:flutter/cupertino.dart';

class AddSugarBody extends StatelessWidget {
  const AddSugarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Text(
                'Sugar',
                style: TextStyle(fontSize: 22),
              ),
              Text(
                ' (In Cubes)',
                style: TextStyle(fontSize: 22, color: Color(0xff909090)),
              ),
            ],
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
              itemCount: kDrinkSugar.length,
              itemBuilder: (context, index) {
                return SizedBox(
                    width: 80,
                    child: DrinkSugarImages(kDrinkSugar: kDrinkSugar[index]));
              }),
        ),
      ],
    );
  }
}
