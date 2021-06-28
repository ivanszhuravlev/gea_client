import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';

class IconTextButton extends StatelessWidget {
  final Function() onPress;
  final String label;
  final IconData icon;

  IconTextButton({required this.onPress, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: AppColors.textLight,
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding:
        EdgeInsets.only(left: 8.0, top: 6.0, right: 8.0, bottom: 6.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            Text(
              label,
              maxLines: 1,
              style: TextStyle(
                  color: AppColors.darkContrast,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
      visualDensity: VisualDensity.compact,
      onPressed: onPress,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
    );
  }
}