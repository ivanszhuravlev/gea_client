import 'package:flutter/foundation.dart';
import 'package:gea/api/application.dart';
import 'package:gea/types/application.dart';
import 'package:collection/collection.dart';

class AppModel extends ChangeNotifier {
  final List<ApplicationInfo> _apps = [];
  final ApplicationClient client = ApplicationClient();

  AppModel() {
    this.list();
  }

  List<ApplicationInfo> get apps => this._apps;

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

  ApplicationInfo? item({Key? key, String id = ""}) {
    return _apps.firstWhereOrNull((element) => element.id == id, );
  }
}