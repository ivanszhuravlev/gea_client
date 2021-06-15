import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';

class TextSeparator extends StatelessWidget {
  final String text;

  TextSeparator({required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Divider(
          color: AppColors.lighterCaption,
        ),
        Container(
          decoration: new BoxDecoration(color: AppColors.background),
          child:
          Padding(padding: EdgeInsets.only(right: 4), child:
          Text(
            text,
            style:
                TextStyle(color: AppColors.lighterCaption, fontSize: FontSizes.caption, backgroundColor: AppColors.background),
          ),
          ),
        ),
      ],
    );
  }
}
