import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatelessWidget {
  static const String route = '/app';
  final String appId;

  AppScreen({Key? key, this.appId = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppModel>();
    var app = model.item(id: appId);

    if (app == null) {
      return Container(
        child: Center(
          child: Text('No app with id: $appId'),
        ),
        color: Colors.white,
      );
    }

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              app.name,
            ),
            Text(app.id)
          ],
        ),
      ),
      color: Colors.white,
    );
  }
}
