import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';

class AccentButton extends StatelessWidget {
  final Function() onPress;
  final String label;

  AccentButton({Key? key, required this.onPress, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: AppColors.accentLight,
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      hoverElevation: 0,
      child: Padding(
        padding:
            EdgeInsets.only(left: 12.0, top: 8.0, right: 12.0, bottom: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              maxLines: 1,
              style: TextStyle(
                  color: AppColors.textLight,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
      visualDensity: VisualDensity.comfortable,
      onPressed: onPress,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }
}
