import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';

class Dropdown<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(T) renderItem;
  final void Function(T) onPressed;

  Dropdown({
    required this.items,
    required this.renderItem,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: new BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(offset: Offset(0, 12), color: AppColors.shadow, blurRadius: 8, spreadRadius: 1)
        ],
          // shape: RoundedRectangleBorder() 
          borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      child: Column(
        children: items.map((item) {
          return TextButton(
            onPressed: () => onPressed(item),
            child: renderItem(item),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(300, double.infinity)),
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 4, horizontal: 8))
            ),
          );
        }).toList(),
      ),
    );
  }
}
