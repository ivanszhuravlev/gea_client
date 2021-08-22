import 'package:flutter/material.dart';
import 'package:gea/api/application.dart';
import 'package:gea/api/contour.dart';
import 'package:gea/api/environment.dart';
import 'package:gea/api/project.dart';
import 'package:gea/protos/apps/applications/applications_v1.pb.dart';
import 'package:gea/protos/apps/contours/contours_v1.pb.dart';
import 'package:gea/protos/external/gitlab/environments/environments_v1.pb.dart';
import 'package:gea/protos/external/gitlab/projects/projects_v1.pb.dart';

class AppScreenModel extends ChangeNotifier {
  final ProjectClient projectClient = ProjectClient();
  final EnvironmentClient envClient = EnvironmentClient();
  final ApplicationClient appClient = ApplicationClient();
  final ContourClient contourClient = ContourClient();

  late AppFullInfo app;
  Map<String, List<ServiceInfoFull>> _services = Map();
  _ChosenService? _chosenService;

  AppScreenModel({required AppWithoutContours app}) {
    init();
    appClient.get(app).then((value) => this.app = value);
  }

  Map<String, List<ServiceInfoFull>> get services => _services;
  ServiceInfoFull? get chosenService {
    if (_chosenService == null) {
      return null;
    }
    var _list = _services[_chosenService!.contourName];

    return _list?[_chosenService!.index];
  }

  init() async {
    app.contours.forEach((_contour) async {
      List<ServiceInfoFull> _servicesList =
          await Future.wait(_contour.services.map(_getServiceInfo).toList());

      _services[_contour.name] = _servicesList;
      notifyListeners();
    });
  }

  Future<ServiceInfoFull> _getServiceInfo(ServiceInfo service) async {
    final project = await projectClient.get(service.project);
    final env = await envClient.get(service.project, service.environment);

    return ServiceInfoFull(project: project, env: env, id: service.id);
  }

  int _getContourIndex(String name) {
    return app.contours.indexWhere((item) => item.name == name);
  }

  Future<void> deleteService(
      ContourInfo contour, ServiceInfoFull service) async {
    int foundIndex = _getContourIndex(contour.name);

    if (foundIndex < 0) {
      return null;
    }
    app.contours[foundIndex].services.removeWhere((e) => e.id == service.id);

    _services[contour.name]!.removeWhere((e) => e.id == service.id);

    await contourClient.removeService(
        ServiceIdAndContourId(contourId: contour.id, serviceId: service.id));
    notifyListeners();
  }

  void chooseService(String contourName, int index) {
    _chosenService = _ChosenService(contourName: contourName, index: index);
    notifyListeners();
  }

  void closeChosenService() {
    _chosenService = null;
    notifyListeners();
  }

  void addService(ServiceWithoutId service, ContourInfo contour) async {
    int foundIndex = _getContourIndex(contour.name);

    if (foundIndex < 0) {
      return null;
    }

    await contourClient.addService(
        RepeatedServiceWithoutId(contourId: contour.id, services: [service]));

    // TODO: use response from contourClient.addService when it's done on backend
    // app.contour[foundIndex].services
    //     .add(ServiceInfo(project: service.project, environment: service.environment));
    // _services[contour.name]!.add(service);

    notifyListeners();
  }

  Future<void> renameContour(String oldName, String newName) async {
    int index = _getContourIndex(oldName);

    if (index < 0) {
      return null;
    }

    app.contours[index].name = newName;
    _services[newName] = _services[oldName]!;
    _services.remove(oldName);

    await contourClient.rename(
        ContourInfoWithoutServices(id: app.contours[index].id, name: newName));
    notifyListeners();
  }
}

class ServiceInfoFull {
  final ProjectInfo project;
  final EnvironmentInfo env;
  final String id;

  ServiceInfoFull({required this.project, required this.env, required this.id});
}

class _ChosenService {
  final String contourName;
  final int index;

  _ChosenService({required this.contourName, required this.index});
}
