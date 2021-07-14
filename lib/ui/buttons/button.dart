import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';

class Button extends StatelessWidget {
  final Widget child;
  final void Function() onPress;
  final Color? backgroundColor;

  Button({required this.child, required this.onPress, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: backgroundColor ?? AppColors.accentLight,
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      hoverElevation: 0,
      child: Padding(
        padding:
        EdgeInsets.only(left: 6, top: 6, right: 6, bottom: 6),
        child: child,
      ),
      constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
      visualDensity: VisualDensity.comfortable,
      onPressed: onPress,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
    );
  }
}
