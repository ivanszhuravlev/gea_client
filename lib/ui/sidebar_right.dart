import 'package:flutter/material.dart';
import 'package:gea/screens/app_screen.dart';

class SidebarRight extends StatelessWidget {
  final Widget child;

  SidebarRight({required this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          child: child
        ),
        width: 360,
        color: Colors.white,
      ),
    );
  }

  void onAppPress(String id, BuildContext context) {
    print(id);
    Navigator.of(context).pushNamed('${AppScreen.route}/$id');
  }
}
