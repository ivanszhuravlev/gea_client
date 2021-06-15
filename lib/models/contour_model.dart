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

  final List<ContourFormModel> _contours = [ContourFormModel()];

  List<ContourFormModel> get contours => this._contours;

  void addContour() {
    _contours.add(ContourFormModel());

    notifyListeners();
  }
}

class ContourFormModel extends ChangeNotifier {
  final List<ProjectInfo> _projects = [];
  final List<EnvironmentInfo> _envs = [];
  ProjectInfo? _chosenProject;
  EnvironmentInfo? _chosenEnv;

  final ProjectClient projectClient = ProjectClient();
  final EnvironmentClient envClient = EnvironmentClient();

  List<ProjectInfo> get projects => this._projects;
  List<EnvironmentInfo> get environments => this._envs;
  ProjectInfo? get chosenProject => this._chosenProject;
  EnvironmentInfo? get chosenEnv => this._chosenEnv;

  TextEditingController projectName = TextEditingController();
  TextEditingController envName = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    projectName.dispose();
    envName.dispose();
    super.dispose();
  }

  void listProjects(String projectName) async{
    this._chosenProject = null;
    this._chosenEnv = null;

    var list = await projectClient.list(projectName);

    final end = list.length > 5 ? 5 : list.length;
    _projects.clear();
    _projects.addAll(list.slice(0, end));
    notifyListeners();
  }

  void listEnvs(String envName) async{
    this._chosenEnv = null;

    if (this.chosenProject == null) {
      return null;
    }

    var list = await envClient.list(this._chosenProject!.id, envName);

    final end = list.length > 5 ? 5 : list.length;
    _envs.clear();
    _envs.addAll(list.slice(0, end));
    notifyListeners();
  }

  chooseProject(ProjectInfo project) async {
    this._chosenProject = project;
    notifyListeners();
  }

  chooseEnv(EnvironmentInfo env) async {
    this._chosenEnv = env;
    notifyListeners();
  }
}