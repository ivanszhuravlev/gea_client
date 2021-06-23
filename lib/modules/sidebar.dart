import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/screens/app_screen.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppModel>();
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          children: model.apps
              .map((app) => TextButton(
                  onPressed: () => onAppPress(app.appInfo.id, context), child: Text(app.appInfo.name)))
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
