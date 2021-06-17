import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gea/api/application.dart';
import 'package:gea/api/environment.dart';
import 'package:gea/api/project.dart';
import 'package:collection/collection.dart';
import 'package:gea/protos/environments/environments.v1.pb.dart';
import 'package:gea/protos/projects/projects.v1.pbgrpc.dart';

class ContourModel extends ChangeNotifier {
  final ProjectClient projectClient = ProjectClient();
  final EnvironmentClient envClient = EnvironmentClient();

  final _random = Random();

  List<String> _keys = [];

  ContourModel() {
    final newKey = _random.nextInt(1000).toString();
    _keys.add(newKey);

    _projectResults[newKey] = [];
    _envResults[newKey] = [];
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
    notifyListeners();
  }

  chooseEnv(EnvironmentInfo env, String key) async {
    this._chosenEnvs[key] = env;
    notifyListeners();
  }
}
