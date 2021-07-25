import 'package:flutter/material.dart';
import 'package:gea/modules/forms/sign_up_form.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Home")
      ),
      color: Colors.white,
    );
  }
}
