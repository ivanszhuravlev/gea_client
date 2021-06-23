import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/screens/add_contour_screen.dart';
import 'package:gea/ui/heading.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatelessWidget {
  static const String route = '/app';
  final String appId;

  AppScreen({Key? key, this.appId = ""}) : super(key: key);

  onPress(BuildContext context) {
    Navigator.of(context).pushNamed('/app/$appId${AddContourScreen.route}');
  }

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Heading(
                text: app.appInfo.name,
              )),
          Row(
            children: [
              Heading(
                fontSize: FontSizes.h4,
                text: app.appInfo.contour.length.toString(),
              ),
              Text(app.appInfo.id),
            ],
          ),
          ElevatedButton(
              onPressed: () => onPress(context), child: Text("Create contour"))
        ],
      ),
      color: Colors.white,
    );
  }
}
