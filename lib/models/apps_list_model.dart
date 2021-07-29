import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gea/api/application.dart';
import 'package:gea/api/contour.dart';
import 'package:gea/api/project.dart';
import 'package:collection/collection.dart';
import 'package:gea/protos/apps/applications/applications_v1.pb.dart';
import 'package:gea/protos/apps/contours/contours_v1.pb.dart';

class AppsListModel extends ChangeNotifier {
  final List<AppWithoutContours> _apps = [];
  final ApplicationClient client = ApplicationClient();
  final ProjectClient projectClient = ProjectClient();
  final ContourClient contourClient = ContourClient();

  AppsListModel() {
    // this.list();
  }

  List<AppWithoutContours> get apps => this._apps;

  Future<String> create(String name) async{
    var newApp = await client.create(name);
    _apps.add(newApp);
    notifyListeners();
    return newApp.id;
  }

  Future<void> list() async{
    var list = await client.list();

    _apps.clear();
    _apps.addAll(list);
    notifyListeners();
  }

  AppWithoutContours? item({Key? key, String id = ""}) {
    return _apps.firstWhereOrNull((element) => element.id == id,);
  }

  void addContour(ContourNameAndDescription contour, List<ServiceWithoutId> services) async {
    final app = _apps.firstWhereOrNull((element) => element.id == contour.appId);

    if (app == null || contour.appId.length == 0) {
      throw Error();
    }

    await contourClient.create(contour: contour, services: services);
  }
}