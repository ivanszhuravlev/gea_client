import 'package:flutter/material.dart';
import 'package:gea/modules/sidebar.dart';
import 'package:gea/screens/login_screen.dart';
import 'package:gea/ui/vertical_divider.dart';

class RootScreen extends StatelessWidget {
  final String route;
  final Widget child;

  RootScreen({required this.route, required this.child});

  @override
  Widget build (BuildContext context) {

    var sidebar = [
      Sidebar(),
      GlobalDivider(verticalOffset: 12),
    ];

    var baseScreen = (
        Expanded(
          child: SizedBox.expand(
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 32, vertical: 24),
              child: child,
            ),
          ),
        )
    );

    return Row(
      children: [
        if (route != LoginScreen.route) ...sidebar,
        baseScreen,
      ],
    );
  }
}