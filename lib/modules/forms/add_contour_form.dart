import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/models/contour_model.dart';
import 'package:gea/protos/projects/projects.v1.pb.dart';
import 'package:gea/ui/button_simple.dart';
import 'package:gea/utils/form_generator.dart';
import 'package:provider/provider.dart';

import '../dropdown.dart';

class AddContourForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appModel = context.watch<AppModel>();
    var contourModel = Provider.of<ContourModel>(context, listen: false);

    return FormGenerator(
        fields: [
          Field(
            name: "contour_name",
            label: "Contour name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Cannot be empty";
              }
              return null;
            },
          ),
          Field(
            name: "project_name",
            label: "Project name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Cannot be empty";
              }
              return null;
            },
            dropdown: ProjectsDropdown(),
            onChanged: contourModel.listProjects,
          ),
        ],
        onSubmit: (List<FormValue> values) {
          // model.create(values.elementAt(0).value);
        },
        labelSubmit: "Create app");
  }
}

class ProjectsDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contourModel = context.watch<ContourModel>();
    var projects = contourModel.projects;

    return projects.length == 0 || contourModel.chosenProject != null
        ? SizedBox.shrink()
        : Dropdown<ProjectInfo>(
              items: projects,
              renderItem: (project) => SimpleButton(onPress: () => {
                contourModel.chooseProject(project)
              }, label: project.name),

    );
  }

}
