import 'package:flutter/foundation.dart';
import 'package:gea/api/application.dart';
import 'package:gea/api/environment.dart';
import 'package:gea/api/project.dart';
import 'package:collection/collection.dart';
import 'package:gea/protos/environments/environments.v1.pb.dart';
import 'package:gea/protos/projects/projects.v1.pbgrpc.dart';

class ContourModel extends ChangeNotifier {
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

  // void create(String name) async{
  //   var newApp = await client.create(name);
  //   _apps.add(newApp);
  //   notifyListeners();
  // }

  void listProjects(String projectName) async{
    this._chosenProject = null;
    var list = await projectClient.list(projectName);

    final end = list.length > 5 ? 5 : list.length;
    _projects.clear();
    _projects.addAll(list.slice(0, end));
    notifyListeners();
  }

  chooseProject(ProjectInfo project) async {
    this._chosenProject = project;
    notifyListeners();
  }

  // void listEnvs(String projectName) async{
  //   var list = await envClient.list(projectName);
  //   _projects.addAll(list);
  //   notifyListeners();
  // }


}