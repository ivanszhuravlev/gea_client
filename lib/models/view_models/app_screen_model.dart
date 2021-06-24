import 'package:flutter/material.dart';
import 'package:gea/api/environment.dart';
import 'package:gea/api/project.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:gea/protos/environments/environments.v1.pb.dart';
import 'package:gea/protos/projects/projects.v1.pb.dart';

class AppScreenModel extends ChangeNotifier {
  final ProjectClient projectClient = ProjectClient();
  final EnvironmentClient envClient = EnvironmentClient();

  final AppInfo app;
  Map<String, List<ServiceInfo>> _services = Map();

  AppScreenModel({required this.app}) {
    init();
  }

  Map<String, List<ServiceInfo>> get services => _services;
  
  init() async {
    app.contour.forEach((_contour) async {
      List<ServiceInfo> _servicesList = await Future.wait(
          _contour.service.map(_getServiceInfo).toList());


      _services[_contour.name] = _servicesList;
      notifyListeners();
    });
  }

  Future<ServiceInfo> _getServiceInfo(Service service) async {
    final project = await projectClient.get(service.project);
    final env = await envClient.get(service.project, service.environment);

    return ServiceInfo(project: project, env: env);
  }
}

class ServiceInfo {
  final ProjectInfo project;
  final EnvironmentInfo env;

  ServiceInfo({required this.project, required this.env});
}
