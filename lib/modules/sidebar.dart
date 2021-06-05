import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/screens/app.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppModel>();
    return Container(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: model.apps
              .map((app) => TextButton(
                  onPressed: () => onAppPress(app.id, context), child: Text(app.name)))
              .toList(),
          mainAxisSize: MainAxisSize.max,
        ),
      ),
      width: 300,
      color: Colors.white,
    );
  }

  void onAppPress(String id, BuildContext context) {
    print(id);
    Navigator.of(context).pushNamed('${AppScreen.route}/$id');
  }
}
