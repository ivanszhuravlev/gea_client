import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/models/contour_model.dart';
import 'package:gea/protos/environments/environments.v1.pb.dart';
import 'package:gea/protos/projects/projects.v1.pb.dart';
import 'package:gea/ui/button_icon_text.dart';
import 'package:gea/ui/button_simple.dart';
import 'package:gea/ui/text_separator.dart';
import 'package:gea/utils/form_generator.dart';
import 'package:provider/provider.dart';

import '../dropdown.dart';

class AddContourForm extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController contourName = TextEditingController();

  @override
  _FormState createState() {
    return _FormState();
  }
}

class _FormState extends State<AddContourForm> {
  @override
  void dispose() {
    widget.contourName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var appModel = context.watch<AppModel>();
    var contourModel = Provider.of<ContourModel>(context, listen: true);

    return Form(
      key: widget._formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 500,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Contour name",
              ),
              key: Key("contour_name"),
              controller: widget.contourName,
              validator: _validator,
            ),
          ),
          ...contourModel.contours.asMap().entries.map(
            // ...Iterable<int>.generate(contourModel.contoursCount).toList().map(
            (entry) {
              final index = entry.key;
              final model = entry.value;
              final isLast = index == contourModel.contours.length - 1;
              final title = index == 0
                  ? "Find your project and its environment"
                  : "Add one more project";

              List<Widget> children = [ContourRow(title: title)];

              if (isLast) {
                children.add(
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 32),
                    child: IconTextButton(
                      label: "Add project",
                      icon: Icons.add,
                      onPress: () {
                        contourModel.addContour();
                      },
                    ),
                  ),
                );
              }

              return ChangeNotifierProvider(
                create: (context) => model,
                child: Column(
                  children: children,
                ),
              );
            },
          ).toList(),
          ElevatedButton(
              onPressed: () {
                contourModel.contours.forEach((element) {
                  print("HELLO: " + (element.chosenProject?.name ?? "none"));
                });
              },
              child: Text("Create"))
        ],
      ),
    );
  }
}

class ContourRow extends StatelessWidget {
  final _debounce = Debounce(delay: Duration(milliseconds: 200));
  final String title;

  ContourRow({required this.title});

  @override
  Widget build(BuildContext context) {
    var contourModel = Provider.of<ContourFormModel>(context, listen: true);

    return Column(
      children: [
        SizedBox(
          width: 500,
          child: Padding(
            padding: EdgeInsets.only(top: 32),
            child: TextSeparator(
              text: this.title,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: SizedBox(
                width: 244,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Project name",
                      ),
                      key: Key("project_name"),
                      controller: contourModel.projectName,
                      validator: _validator,
                      onChanged: (value) {
                        _debounce.run(() {
                          contourModel.listProjects(value);
                        });
                      },
                    ),
                    _ProjectsDropdown(
                      onChosen: (String name) {
                        contourModel.projectName.value = TextEditingValue(text: name);
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 244,
              child: Column(
                // clipBehavior: Clip.none,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    enabled: contourModel.chosenProject != null,
                    decoration: InputDecoration(
                      labelText: "Environment name",
                    ),
                    key: Key("env_name"),
                    controller: contourModel.envName,
                    validator: _validator,
                    onChanged: (value) {
                      _debounce.run(() {
                        contourModel.listEnvs(value);
                      });
                    },
                  ),
                  _EnvsDropdown(
                    onChosen: (String name) {
                      contourModel.envName.value = TextEditingValue(text: name);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProjectsDropdown extends StatelessWidget {
  final void Function(String) onChosen;

  _ProjectsDropdown({required this.onChosen});

  @override
  Widget build(BuildContext context) {
    var contourModel = context.watch<ContourFormModel>();
    var projects = contourModel.projects;

    return projects.length == 0 || contourModel.chosenProject != null
        ? SizedBox.shrink()
        : Dropdown<ProjectInfo>(
            items: projects,
            renderItem: (project) => SimpleButton(
                onPress: () {
                  contourModel.chooseProject(project);
                  onChosen(project.name);
                },
                label: project.name),
          );
  }
}

class _EnvsDropdown extends StatelessWidget {
  final void Function(String) onChosen;

  _EnvsDropdown({required this.onChosen});

  @override
  Widget build(BuildContext context) {
    var contourModel = context.watch<ContourFormModel>();
    var environments = contourModel.environments;

    return environments.length == 0 || contourModel.chosenEnv != null
        ? SizedBox.shrink()
        : Dropdown<EnvironmentInfo>(
            items: environments,
            renderItem: (env) => SimpleButton(
                onPress: () {
                  contourModel.chooseEnv(env);
                  onChosen(env.name);
                },
                label: env.name),
          );
  }
}

String? Function(String?)? _validator = (value) {
  if (value == null || value.isEmpty) {
    return "Cannot be empty";
  }
  return null;
};
