import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';

class GlobalDivider extends StatelessWidget {
  final double? verticalOffset;

  GlobalDivider({ this.verticalOffset });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric( vertical: verticalOffset ?? 0),
      child: VerticalDivider(color: AppColors.border),
    );
  }
}