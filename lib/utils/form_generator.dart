import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class FormGenerator extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  late List<TextEditingController> controllers;
  late List<Field> fields;
  final void Function(List<FormValue>) onSubmit;
  final String labelSubmit;

  FormGenerator({
    required List<Field> fields,
    required this.onSubmit,
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
  final _debounce = Debounce(delay: Duration(milliseconds: 500));

  @override
  void dispose() {
    widget.controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("FORM  RERENDER");
    return Form(
      key: widget._formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...widget.fields.asMap().entries.map((entry) {
            var index = entry.key;
            var field = entry.value;
            List<Widget> itemBuilder = [
              TextFormField(
                decoration: InputDecoration(
                    labelText: field.label, helperText: field.placeholder),
                key: Key(field.name),
                controller: widget.controllers[index],
                validator: field.validator,
                onChanged: (value) {
                  _debounce.run(() {
                    if (field.onChanged != null) {
                      field.onChanged!(value);
                    }
                  });
                },
              ),
            ];

            if (field.dropdown != null) {
              itemBuilder.add(field.dropdown!);
            }

            return SizedBox(width: 400,child: Column(
              // clipBehavior: Clip.none,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: itemBuilder,
            ),);
          }).toList(),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: ElevatedButton(
              onPressed: () {
                if (widget._formKey.currentState!.validate()) {
                  var values = widget.fields
                      .asMap()
                      .entries
                      .map((entry) => FormValue(
                          entry.value.name, widget.controllers[entry.key].text))
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
    );
  }
}

class Field {
  final String? placeholder;
  final String? Function(String?) validator;
  final String label;
  final String name;
  final void Function(String)? onChanged;
  final Widget? dropdown;

  Field(
      {required this.name,
      required this.label,
      this.placeholder,
      required this.validator,
      this.onChanged,
      this.dropdown});
}

class FormValue {
  final String name;
  final String value;

  FormValue(this.name, this.value);
}


class Debounce {
  final Duration delay;
  Timer? _timer;

  Debounce({required this.delay});

  run(Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }
}