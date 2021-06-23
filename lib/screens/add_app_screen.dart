import 'package:flutter/material.dart';
import 'package:gea/modules/forms/add_app_form.dart';
import 'package:gea/ui/heading.dart';

class AddAppScreen extends StatelessWidget {
  static String route = '/add-app';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SizedBox(
            width: 400.0,
            child: Column(
              children: [
                Heading(text: "Create an app"),
                AddAppForm(),
              ],
            ),
          )),
    );
  }
}
