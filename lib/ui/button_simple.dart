import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';

class SimpleButton extends StatelessWidget {
  final Function()? onPress;
  final String? label;

  SimpleButton({Key? key, this.onPress, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: AppColors.textLight,
      child: Padding(
        padding:
        EdgeInsets.only(left: 8.0, top: 6.0, right: 8.0, bottom: 6.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label ?? '',
              maxLines: 1,
              style: TextStyle(
                  color: AppColors.header,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
      visualDensity: VisualDensity.compact,
      onPressed: onPress!,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
    );
  }
}