import 'package:flutter/material.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/app_screen_model.dart';
import 'package:gea/modules/app_table.dart';
import 'package:gea/ui/sidebar_right.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:gea/screens/add_contour_screen.dart';
import 'package:gea/ui/buttons/accent_button.dart';
import 'package:gea/ui/heading.dart';
import 'package:gea/ui/vertical_divider.dart';
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

  onDeleteService({
    required BuildContext context,
    required Contour contour,
    required ServiceInfo service,
  }) {
    Provider.of<AppScreenModel>(context, listen: false)
        .deleteService(contour, service);
  }

  onChoose({
    required BuildContext context,
    required String contourName,
    required int index,
  }) {
    Provider.of<AppScreenModel>(context, listen: false)
        .chooseService(contourName, index);
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AppScreenModel>();
    final app = model.app;
    final services = model.services;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Container(
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
                  children: app.contour.map(
                    (contour) {
                      final service = services[contour.name];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading(fontSize: FontSizes.h4, text: contour.name),
                          Padding(
                            padding: EdgeInsets.only(bottom: 32, top: 12),
                            child: service != null
                                ? AppTable(
                                    contour: contour,
                                    serviceInfos: service,
                                    onDelete: onDeleteService,
                                    onChoose: onChoose,
                                  )
                                : Text("Loading"),
                          ),
                        ],
                      );
                    },
                  ).toList(),
                ),
                AccentButton(
                    onPress: () => onPress(context, app.id),
                    label: "Add contour"),
              ],
            ),
            color: Colors.white,
          ),
        ),
        Spacer(),
        GlobalDivider(),
        ServiceDetails(
          service: model.chosenService,
        )
      ],
    );
  }
}

class ServiceDetails extends StatelessWidget {
  final ServiceInfo? service;

  ServiceDetails({required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: service != null
          ? SidebarRight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading(
                    text: "Project",
                    fontSize: FontSizes.h4,
                  ),
                  ...service!.project.info_.byIndex.asMap().entries.map(
                    (entry) {
                      var key = entry.value.toString();
                      var value = service!.project.getField(entry.key + 1);

                      return Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading(
                              text: key,
                              fontSize: FontSizes.h5,
                            ),
                            Text(value.toString())
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24,),
                  Heading(
                    text: "Environment",
                    fontSize: FontSizes.h4,
                  ),
                  ...service!.env.info_.byIndex.asMap().entries.map(
                        (entry) {
                      var key = entry.value.toString();
                      var value = service!.env.getField(entry.key + 1);

                      return Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading(
                              text: key,
                              fontSize: FontSizes.h5,
                            ),
                            Text(value.toString())
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          : SizedBox(),
    );
  }
}
