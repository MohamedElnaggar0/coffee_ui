import 'package:coffee_ui/screens/home_screen.dart';
import 'package:coffee_ui/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';

class LogInScreenBody extends StatelessWidget {
  const LogInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/image/coffee_time.png',
          // width: double.infinity,
          // fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          width: 290,
          child: Text(
            'Get the best coffee In town!',
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              bottomText: 'Register',
              bottomColor: Color(0xffB98875),
              textColor: Color(0xffFAF4EE),
              width: 150,
              textSize: 25,
            ),
            SizedBox(
              width: 30,
            ),
            CustomButton(
              bottomText: 'Login',
              bottomColor: Color(0xffFAF4EE),
              textColor: Color(0xffB98875),
              width: 150,
              textSize: 25,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomButton(
          bottomText: 'Connect with facebook',
          bottomColor: Color(0xffFAF4EE),
          textColor: Color(0xffB98875),
          width: 300,
          textSize: 25,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          ontap: () {
            Navigator.pushNamed(context, HomeScreen.id);
          },
          bottomText: 'Get Started',
          bottomColor: const Color(0xffFAF4EE),
          textColor: const Color(0xffB98875),
          width: 190,
          textSize: 25,
        ),
      ],
    );
  }
}
