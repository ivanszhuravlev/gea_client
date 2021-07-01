import 'package:flutter/material.dart';
import 'package:gea/api/application.dart';
import 'package:gea/api/environment.dart';
import 'package:gea/api/project.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:gea/protos/environments/environments.v1.pb.dart';
import 'package:gea/protos/projects/projects.v1.pb.dart';

class AppScreenModel extends ChangeNotifier {
  final ProjectClient projectClient = ProjectClient();
  final EnvironmentClient envClient = EnvironmentClient();
  final ApplicationClient appClient = ApplicationClient();

  final AppInfo app;
  Map<String, List<ServiceInfo>> _services = Map();
  _ChosenService? _chosenService;

  AppScreenModel({required this.app}) {
    init();
  }

  Map<String, List<ServiceInfo>> get services => _services;
  ServiceInfo? get chosenService {
    if (_chosenService == null) {
      return null;
    }
    var _list = _services[_chosenService!.contourName];

    return _list?[_chosenService!.index];
  }

  init() async {
    app.contour.forEach((_contour) async {
      List<ServiceInfo> _servicesList =
          await Future.wait(_contour.service.map(_getServiceInfo).toList());

      _services[_contour.name] = _servicesList;
      notifyListeners();
    });
  }

  Future<ServiceInfo> _getServiceInfo(Service service) async {
    final project = await projectClient.get(service.project);
    final env = await envClient.get(service.project, service.environment);

    return ServiceInfo(project: project, env: env);
  }

  int _getContourIndex(String name) {
    return app.contour.indexWhere((item) => item.name == name);
  }

  Future<void> deleteService(Contour contour, ServiceInfo service) async {
    int foundIndex = _getContourIndex(contour.name);

    if (foundIndex < 0) {
      return null;
    }
    app.contour[foundIndex].service.removeWhere((e) =>
        e.project == service.project.id && e.environment == service.env.id);

    _services[contour.name]!.removeWhere((e) =>
        e.project.id == service.project.id && e.env.id == service.env.id);

    await appClient.updateApp(appInfo: app);
    notifyListeners();
  }

  void chooseService(String contourName, int index) {
    _chosenService = _ChosenService(contourName: contourName, index: index);
    notifyListeners();
  }

  Future<void> renameContour(String oldName, String newName) async {
    int index = _getContourIndex(oldName);

    if (index < 0) {
      return null;
    }

    app.contour[index].name = newName;
    _services[newName] = _services[oldName]!;
    _services.remove(oldName);

    await appClient.updateApp(appInfo: app);
    notifyListeners();
  }
}

class ServiceInfo {
  final ProjectInfo project;
  final EnvironmentInfo env;

  ServiceInfo({required this.project, required this.env});
}

class _ChosenService {
  final String contourName;
  final int index;

  _ChosenService({required this.contourName, required this.index});
}
