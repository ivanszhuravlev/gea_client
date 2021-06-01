import 'package:flutter/foundation.dart';
import 'package:gea/api/application.dart';
import 'package:gea/types/application.dart';

class AppModel extends ChangeNotifier {
  final List<ApplicationInfo> _apps = [];
  final ApplicationClient client = ApplicationClient();

  get apps => this._apps;

  void create(String name) async{
    var newApp = await client.create(name);
    _apps.add(newApp);
    notifyListeners();
  }
}