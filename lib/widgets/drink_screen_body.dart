import 'package:coffee_ui/widgets/add_sugar_body.dart';
import 'package:coffee_ui/widgets/counter_widget.dart';
import 'package:coffee_ui/widgets/custom_app_bar.dart';
import 'package:coffee_ui/widgets/custom_button.dart';
import 'package:coffee_ui/widgets/drink_size_body.dart';
import 'package:flutter/material.dart';

class DrinkRequest extends StatelessWidget {
  const DrinkRequest({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/background_coffee.png'),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              height: 400,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomAppBar(),
                  const SizedBox(
                    height: 80,
                  ),
                  Image.asset('assets/image/macciato.png',
                      height: 130, width: 80, fit: BoxFit.fill)
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Macchiato',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '5.59 \$',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffB98875),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CounterWidget(),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              DrinkSizeBody(),
              SizedBox(
                height: 35,
              ),
              AddSugarBody(),
              SizedBox(
                height: 35,
              ),
              CustomButton(
                bottomText: 'Add to cart',
                bottomColor: Color(0xffB48577),
                textColor: Colors.white,
                width: 160,
                textSize: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
