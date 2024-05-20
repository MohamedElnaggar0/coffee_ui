import 'package:coffee_ui/widgets/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = 'LogInScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogInScreenBody(),
    );
  }
}
