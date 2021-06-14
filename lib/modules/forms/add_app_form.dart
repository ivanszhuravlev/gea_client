import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/utils/form_generator.dart';
import 'package:provider/provider.dart';

class AddAppForm extends StatelessWidget {
  onSubmit(List<FormValue> values) {
    print(values);
  }

  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppModel>();
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
        onSubmit: (List<FormValue> values) {
          model.create(values.elementAt(0).value);
        },
        labelSubmit: "Create app");
  }
}
