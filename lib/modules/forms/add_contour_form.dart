import 'package:flutter/material.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/models/view_models/create_contour_model.dart';
import 'package:gea/protos/environments/environments.v1.pb.dart';
import 'package:gea/protos/projects/projects.v1.pb.dart';
import 'package:gea/screens/app_screen.dart';
import 'package:gea/ui/buttons/button_icon_text.dart';
import 'package:gea/ui/buttons/button_simple.dart';
import 'package:gea/ui/text_separator.dart';
import 'package:gea/utils/form_generator.dart';
import 'package:provider/provider.dart';

import '../dropdown/dropdown.dart';

class AddContourForm extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  _FormState createState() {
    return _FormState();
  }
}

class _FormState extends State<AddContourForm> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var appModel = context.watch<AppsListModel>();
    var contourModel = Provider.of<CreateContourModel>(context, listen: true);

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
              controller: contourModel.contourName,
              validator: _validator,
            ),
          ),
          ...contourModel.keys.asMap().entries.map(
            (entry) {
              final index = entry.key;
              final key = entry.value;
              final isLast = index == contourModel.keys.length - 1;
              final title = index == 0
                  ? "Find your project and its environment"
                  : "Add one more project";

              List<Widget> children = [
                SizedBox(
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.only(top: 48),
                    child: TextSeparator(
                      text: title,
                      childRight: index == 0
                          ? null
                          : SimpleButton(
                              label: "Delete",
                              onPress: () {
                                contourModel.removeContour(key);
                              },
                            ),
                    ),
                  ),
                ),
                ContourRow(rowKey: key),
              ];

              if (isLast) {
                children.add(
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 32),
                    child: IconTextButton(
                      label: "Add project",
                      icon: Icons.add,
                      onPress: () {
                        contourModel.init();
                      },
                    ),
                  ),
                );
              }

              return Column(children: children);
            },
          ).toList(),
          ElevatedButton(
              onPressed: () {
                if (widget._formKey.currentState!.validate()) {
                  var contour = contourModel.getReadyContour();

                  if (contour != null) {
                    appModel.addContour(
                        contourModel.appId, contour);
                    Navigator.of(context).pushNamed('${AppScreen.route}/${contourModel.appId}');
                  }
                }
              },
              child: Text("Create"),
          )
        ],
      ),
    );
  }
}

class ContourRow extends StatelessWidget {
  final String rowKey;

  ContourRow({required this.rowKey}) : super(key: Key(rowKey));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          key: Key("row-" + rowKey),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: SizedBox(
                width: 244,
                child: ProjectChooseField(rowKey: rowKey),
              ),
            ),
            SizedBox(
              width: 244,
              child: EnvChooseField(rowKey: rowKey),
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectChooseField extends StatelessWidget {
  final String rowKey;
  final _debounce = Debounce(delay: Duration(milliseconds: 0));

  ProjectChooseField({required this.rowKey});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<CreateContourModel>(context, listen: true);

    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Project name",
          ),
          key: Key("project_name" + rowKey),
          controller: model.projectNames[rowKey],
          validator: _validator,
          onChanged: (value) {
            _debounce.run(() {
              model.listProjects(value, rowKey);
            });
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: _ProjectsDropdown(
            rowKey: rowKey,
            onChosen: (String name) {
              print(rowKey);
              print(model.projectNames);
              print(TextEditingValue(text: name));

              model.projectNames[rowKey]?.value = TextEditingValue(text: name);
            },
          ),
        ),
      ],
    );
  }
}

class EnvChooseField extends StatelessWidget {
  final String rowKey;
  final _debounce = Debounce(delay: Duration(milliseconds: 0));

  EnvChooseField({required this.rowKey});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<CreateContourModel>(context, listen: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          enabled: model.chosenProjects[rowKey] != null,
          decoration: InputDecoration(
            labelText: "Environment name",
          ),
          key: Key("env_name" + rowKey),
          controller: model.envNames[rowKey],
          validator: _validator,
          onChanged: (value) {
            _debounce.run(() {
              model.listEnvs(value, rowKey);
            });
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: _EnvsDropdown(
            rowKey: rowKey,
            onChosen: (String name) {
              model.envNames[rowKey]?.value =
                  TextEditingValue(text: name);
            },
          ),
        ),
      ],
    );
  }
}

class _ProjectsDropdown extends StatelessWidget {
  final void Function(String) onChosen;
  final String rowKey;

  _ProjectsDropdown({required this.rowKey, required this.onChosen})
      : super(key: Key(rowKey));

  @override
  Widget build(BuildContext context) {
    var contourModel = context.watch<CreateContourModel>();
    var projects = contourModel.projectResults[rowKey] ?? [];

    return projects.length == 0 || contourModel.chosenProjects[rowKey] != null
        ? SizedBox.shrink()
        : Dropdown<ProjectInfo>(
            items: projects,
            onPressed: (project) {
              contourModel.chooseProject(project, rowKey);
              onChosen(project.name);
            },
            renderItem: (project) => Text(project.name),
          );
  }
}

class _EnvsDropdown extends StatelessWidget {
  final void Function(String) onChosen;
  final String rowKey;

  _EnvsDropdown({required this.rowKey, required this.onChosen})
      : super(key: Key(rowKey));

  @override
  Widget build(BuildContext context) {
    var contourModel = context.watch<CreateContourModel>();
    var environments = contourModel.envResults[rowKey] ?? [];

    return environments.length == 0 || contourModel.chosenEnvs[rowKey] != null
        ? SizedBox.shrink()
        : Dropdown<EnvironmentInfo>(
            items: environments,
            onPressed: (env) {
              contourModel.chooseEnv(env, rowKey);
              onChosen(env.name);
            },
            renderItem: (env) => Text(env.name),
          );
  }
}

String? Function(String?)? _validator = (value) {
  if (value == null || value.isEmpty) {
    return "Cannot be empty";
  }
  return null;
};
