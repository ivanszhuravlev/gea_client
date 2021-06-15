import 'package:flutter/cupertino.dart';
import 'package:gea/constants/app_colors.dart';

class Dropdown<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(T) renderItem;

  Dropdown({
    required this.items,
    required this.renderItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: AppColors.border),
      child: Wrap(
          direction: Axis.horizontal,
          children: items.map(renderItem).toList(),
          clipBehavior: Clip.hardEdge),
    );
  }
}
