import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';

class TextSeparator extends StatelessWidget {
  final String text;
  final Widget? childRight;

  TextSeparator({required this.text, this.childRight});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Divider(
          color: AppColors.lighterCaption,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: new BoxDecoration(color: AppColors.background),
              child: Padding(
                padding: EdgeInsets.only(right: 4),
                child: Text(
                  text,
                  style: TextStyle(
                      color: AppColors.lighterCaption,
                      fontSize: FontSizes.caption,
                      backgroundColor: AppColors.background),
                ),
              ),
            ),
            Container(
              decoration: new BoxDecoration(color: AppColors.background),
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: childRight ?? SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
