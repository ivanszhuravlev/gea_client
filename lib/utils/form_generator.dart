import 'package:flutter/material.dart';

class FormGenerator extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  late List<TextEditingController> controllers;
  late List<Field> fields;
  final void Function(List<FormValue>) onSubmit;
  final BoxConstraints constraints;
  final String labelSubmit;

  FormGenerator({
    required List<Field> fields,
    required this.onSubmit,
    required this.constraints,
    required this.labelSubmit,
  }) {
    this.fields = fields;
    this.controllers = fields.map((e) => TextEditingController()).toList();
  }

  @override
  _FormGeneratorState createState() {
    return _FormGeneratorState();
  }
}

class _FormGeneratorState extends State<FormGenerator> {
  @override
  void dispose() {
    widget.controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: ConstrainedBox(
        constraints: widget.constraints,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...widget.fields.asMap().entries.map((entry) {
              var index = entry.key;
              var field = entry.value;

              return ConstrainedBox(
                constraints: BoxConstraints.loose(Size(double.infinity, 100)),
                child: TextFormField(
                  key: Key(field.name),
                  controller: widget.controllers[index],
                  validator: field.validator,
                ),
              );
            }).toList(),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: ElevatedButton(
                onPressed: () {
                  if (widget._formKey.currentState!.validate()) {
                    var values = widget.fields
                        .asMap()
                        .entries
                        .map((entry) => FormValue(entry.value.name,
                            widget.controllers[entry.key].text))
                        .toList();

                    widget.onSubmit(values);
                    widget.controllers.forEach((field) => field.clear());
                  }
                },
                child: Text(widget.labelSubmit),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

class Field {
  final String? placeholder;
  final String? Function(String?) validator;
  final String label;
  final String name;

  Field(
      {required this.name,
      required this.label,
      this.placeholder,
      required this.validator});
}

class FormValue {
  final String name;
  final String value;

  FormValue(this.name, this.value);
}
