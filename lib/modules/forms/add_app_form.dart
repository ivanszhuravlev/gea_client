import 'package:flutter/material.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/screens/app_screen.dart';
import 'package:gea/utils/form_generator.dart';
import 'package:provider/provider.dart';

class AddAppForm extends StatelessWidget {
  onSubmit(List<FormValue> values) {
    print(values);
  }

  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppsListModel>();
    return FormGenerator(
        fields: [
          Field(
              name: "name",
              label: "App name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Cannot be empty";
                }
                return null;
              }),
        ],
        onSubmit: (List<FormValue> values) async{
          var appId = await model.create(values.elementAt(0).value);
          Navigator.of(context).pushNamed('${AppScreen.route}/$appId');
        },
        labelSubmit: "Create app");
  }
}
