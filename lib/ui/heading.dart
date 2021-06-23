import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';

class Heading extends StatelessWidget {
  final String text;
  final double? fontSize;

  Heading({required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.darkContrast,
        fontSize: fontSize ?? FontSizes.h1,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
