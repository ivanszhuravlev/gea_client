import 'package:flutter/material.dart';
import 'package:gea/modules/forms/add_app_form.dart';
import 'package:gea/modules/forms/add_contour_form.dart';

class AddContourScreen extends StatelessWidget {
  static String route = '/add-contour';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SizedBox(
            width: 400.0,
            child: AddContourForm(),
          )),
    );
  }
}
