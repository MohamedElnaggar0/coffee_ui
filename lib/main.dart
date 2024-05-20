import 'package:coffee_ui/screens/drink_screen.dart';
import 'package:coffee_ui/screens/home_screen.dart';
import 'package:coffee_ui/screens/log_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeUi());
}

class CoffeeUi extends StatelessWidget {
  const CoffeeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        DrinkScreen.id: (context) => const DrinkScreen(),
      },
      initialRoute: LoginScreen.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
