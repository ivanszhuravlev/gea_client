import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gea/api/environment.dart';
import 'package:gea/api/project.dart';
import 'package:collection/collection.dart';
import 'package:gea/protos/apps/contours/contours_v1.pb.dart';
import 'package:gea/protos/external/gitlab/environments/environments_v1.pb.dart';
import 'package:gea/protos/external/gitlab/projects/projects_v1.pb.dart';

class CreateContourModel extends ChangeNotifier {
  final ProjectClient projectClient = ProjectClient();
  final EnvironmentClient envClient = EnvironmentClient();

  final TextEditingController contourName = TextEditingController();

  final String appId;

  final _random = Random();

  List<String> _keys = [];

  CreateContourModel({required this.appId}) {
    final newKey = _random.nextInt(1000).toString();
    _keys.add(newKey);

    _projectResults[newKey] = [];
    _envResults[newKey] = [];

    projectNames[newKey] = TextEditingController();
    envNames[newKey] = TextEditingController();
  }

  List<String> get keys => this._keys;

  Map<String, ProjectInfo?> _chosenProjects = Map();
  Map<String, EnvironmentInfo?> _chosenEnvs = Map();

  Map<String, List<ProjectInfo>?> _projectResults = Map();
  Map<String, List<EnvironmentInfo>?> _envResults = Map();

  Map<String, TextEditingController> projectNames = Map();
  Map<String, TextEditingController> envNames = Map();

  Map<String, ProjectInfo?> get chosenProjects => this._chosenProjects;
  Map<String, EnvironmentInfo?> get chosenEnvs => this._chosenEnvs;
  Map<String, List<ProjectInfo>?> get projectResults => this._projectResults;
  Map<String, List<EnvironmentInfo>?> get envResults => this._envResults;

  @override
  void dispose() {
    contourName.dispose();
    projectNames.forEach((key, value) => value.dispose());
    envNames.forEach((key, value) => value.dispose());
    super.dispose();
  }

  void init() {
    final newKey = _random.nextInt(1000).toString();
    _keys.add(newKey);

    _projectResults[newKey] = [];
    _envResults[newKey] = [];

    projectNames[newKey] = TextEditingController();
    envNames[newKey] = TextEditingController();
    notifyListeners();
  }

  void removeContour(String key) {
    _keys.removeWhere((element) => element == key);
    projectNames[key]?.dispose();
    envNames[key]?.dispose();

    notifyListeners();
  }

  void listProjects(String projectName, String key) async {
    this._chosenProjects[key] = null;
    this._chosenEnvs[key] = null;

    var list = await projectClient.list(projectName);

    final end = list.length > 5 ? 5 : list.length;
    _projectResults[key]?.clear();
    _projectResults[key]?.addAll(list.slice(0, end));
    notifyListeners();
  }

  void listEnvs(String envName, String key) async {
    this._chosenEnvs[key] = null;

    if (this._chosenProjects[key] == null) {
      return null;
    }

    var list = await envClient.list(this._chosenProjects[key]!.id, envName);

    final end = list.length > 5 ? 5 : list.length;
    _envResults[key]?.clear();
    _envResults[key]?.addAll(list.slice(0, end));
    notifyListeners();
  }

  chooseProject(ProjectInfo project, String key) async {
    this._chosenProjects[key] = project;
    _projectResults[key] = [];

    notifyListeners();
  }

  chooseEnv(EnvironmentInfo env, String key) async {
    this._chosenEnvs[key] = env;
    _envResults[key] = [];

    notifyListeners();
  }

  ServiceWithoutId? _getServiceWithoutId(MapEntry<String, ProjectInfo?> entry) {
    final key = entry.key;
    final project = entry.value;

    final env = _chosenEnvs[key];
    
    if (project != null && env != null) {
      return ServiceWithoutId(project: project.id, environment: env.id);
    } else {
      return null;
    }
  }

  Iterable<ServiceWithoutId> _getServices() {
    return _chosenProjects.entries.map((entry) {
      var info = _getServiceWithoutId(entry);

      if (info == null) {
        throw Error();
      }

      return info;
    });
  }

  ContourNameAndDescription? getReadyContour() {
    try {
      return ContourNameAndDescription(name: contourName.text, appId: appId);
    } catch (error) {
      return null;
    }
  }

  List<ServiceWithoutId?> getServices() {
    return _getServices().toList();
  }
}
