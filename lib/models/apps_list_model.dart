import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gea/api/application.dart';
import 'package:gea/api/project.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:collection/collection.dart';

class AppsListModel extends ChangeNotifier {
  final List<AppInfo> _apps = [];
  final ApplicationClient client = ApplicationClient();
  final ProjectClient projectClient = ProjectClient();

  AppsListModel() {
    this.list();
  }

  List<AppInfo> get apps => this._apps;

  Future<String> create(String name) async{
    var newApp = await client.create(name);
    _apps.add(newApp);
    notifyListeners();
    return newApp.id;
  }

  void list() async{
    var list = await client.list();
    _apps.addAll(list);
    notifyListeners();
  }

  AppInfo? item({Key? key, String id = ""}) {
    return _apps.firstWhereOrNull((element) => element.id == id,);
  }

  void addContour(String appId, Contour contour) async {
    final app = _apps.firstWhereOrNull((element) => element.id == appId);

    if (app == null || appId.length == 0) {
      throw Error();
    }

    await client.createContour(appInfo: app, contour: contour);
  }
}