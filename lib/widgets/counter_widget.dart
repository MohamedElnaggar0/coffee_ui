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
  int _counter = 1;
  final int _minCounter = 1;
  final int _maxCounter = 10;

  void _incrementCounter() {
    setState(() {
      if (_counter < _maxCounter) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > _minCounter) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterButton(
          text: '-',
          onPressed: () {
            setState(() {
              if (_counter > _minCounter) {
                _decrementCounter();
              }
            });
          },
        ),
        Container(
            alignment: Alignment.center,
            width: 20,
            child: Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )),
        CounterButton(
          text: '+',
          onPressed: () {
            setState(() {
              if (_counter < _maxCounter) {
                _incrementCounter();
              }
            });
          },
        ),
      ],
    );
  }
}
