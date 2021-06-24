import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/app_screen_model.dart';
import 'package:gea/modules/app_table.dart';
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
    var model = context.watch<AppsListModel>();
    var app = model.item(id: appId);

    if (app == null) {
      return Container(
        child: Center(
          child: Text('No app with id: $appId'),
        ),
        color: Colors.white,
      );
    }

    return ChangeNotifierProvider<AppScreenModel>(
      create: (context) => AppScreenModel(app: app),
      child: _AppScreenContent(),
    );
  }
}

class _AppScreenContent extends StatelessWidget {
  onPress(BuildContext context, String appId) {
    Navigator.of(context).pushNamed('/app/$appId${AddContourScreen.route}');
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AppScreenModel>();
    final app = model.app;
    final services = model.services;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Heading(
                text: app.name,
              )),
          Column(
            children: app.contour
                .map(
                  (contour) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading(fontSize: FontSizes.h4, text: contour.name),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: AppTable(
                          serviceInfos: services[contour.name],
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
          ElevatedButton(
              onPressed: () => onPress(context, app.id),
              child: Text("Create contour"))
        ],
      ),
      color: Colors.white,
    );
  }
}
