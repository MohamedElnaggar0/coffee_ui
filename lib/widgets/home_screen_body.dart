import 'package:coffee_ui/widgets/custom_text_widget.dart';
import 'package:coffee_ui/widgets/home_list_view_body.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.search,
            size: 40,
          ),
        ),
        CustomTextWidget(),
        HomeListViewBody(),
      ],
    );
  }
}
