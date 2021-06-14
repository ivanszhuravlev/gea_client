import 'package:flutter/foundation.dart';
import 'package:gea/api/application.dart';
import 'package:gea/api/project.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:collection/collection.dart';

class AppModel extends ChangeNotifier {
  final List<AppInfo> _apps = [];
  final ApplicationClient client = ApplicationClient();
  final ProjectClient projectClient = ProjectClient();

  AppModel() {
    this.list();
  }

  List<AppInfo> get apps => this._apps;

  void create(String name) async{
    var newApp = await client.create(name);
    _apps.add(newApp);
    notifyListeners();
  }

  void list() async{
    var list = await client.list();
    _apps.addAll(list);
    notifyListeners();
  }

  AppInfo? item({Key? key, String id = ""}) {
    return _apps.firstWhereOrNull((element) => element.id == id,);
  }
}