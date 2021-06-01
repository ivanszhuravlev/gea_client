import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<AppModel>();
    return Container(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: cart.apps.map((app) => Text(app.name)).toList(),
          mainAxisSize: MainAxisSize.max,
        ),
      ),
      width: 300,
      color: Colors.white,
    );
  }
}
