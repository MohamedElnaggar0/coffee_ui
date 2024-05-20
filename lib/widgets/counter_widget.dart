import 'package:coffee_ui/widgets/custom_counter_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
  });

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterButton(
          text: '-',
          onPressed: () {
            setState(() {
              counter >= 1 && counter <= 10;
              counter--;
            });
          },
        ),
        Container(
            alignment: Alignment.center,
            width: 20,
            child: Text(
              '$counter',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )),
        CounterButton(
          text: '+',
          onPressed: () {
            setState(() {
              counter >= 1 && counter <= 10;
              counter++;
            });
          },
        ),
      ],
    );
  }
}
