import 'package:coffee_ui/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFAF4EE),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: HomeScreenBody(),
      ),
    );
  }
}
