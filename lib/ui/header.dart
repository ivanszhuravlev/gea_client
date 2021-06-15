import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/screens/add_app_screen.dart';
import 'package:gea/ui/button_simple.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            EdgeInsets.only(left: 24.0, top: 0.0, right: 24.0, bottom: 0.0),
        child: Row(children: [
          Text(
            "Gitlab Environments Aggregator",
            style: TextStyle(color: AppColors.textLight),
          ),
          Spacer(),
          SimpleButton(onPress: () => onAddApp(context), label: "Add an app"),
        ]),
      ),
      color: AppColors.darkContrast,
    );
  }

  onAddApp(BuildContext context) {
    print("ADD APP");
    Navigator.of(context).pushNamed(AddAppScreen.route);
  }
}
