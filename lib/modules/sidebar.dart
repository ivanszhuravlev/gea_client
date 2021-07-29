import 'package:flutter/material.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/screens/app_screen.dart';
import 'package:provider/provider.dart';
import 'package:after_layout/after_layout.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => new _SidebarState();
}

class _SidebarState extends State<Sidebar> with AfterLayoutMixin<Sidebar> {
  // Future<void> onMount(BuildContext context) {
  //
  // }

  @override
  void afterFirstLayout(BuildContext context) {
    var model = Provider.of<AppsListModel>(context, listen: false);

    print("GET LIST ON LAYOUT ________________________");
    model.list();
  }

  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppsListModel>();
    // var model = Provider.of<AppsListModel>(context, listen: false);

    // return FutureBuilder(
    //   future: onMount(context),
    //   builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
    //     return SidebarContent();
    //   },
    // );

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          children: model.apps
              .map((app) => TextButton(
              onPressed: () => onAppPress(app.id, context),
              child: Text(app.name)))
              .toList(),
          mainAxisSize: MainAxisSize.max,
        ),
      ),
      width: 300,
      color: Colors.white,
    );
  }

  void onAppPress(String id, BuildContext context) {
    print(id);
    Navigator.of(context).pushNamed('${AppScreen.route}/$id');
  }
}

class SidebarContent extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    var model = context.watch<AppsListModel>();

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          children: model.apps
              .map((app) => TextButton(
              onPressed: () => onAppPress(app.id, context),
              child: Text(app.name)))
              .toList(),
          mainAxisSize: MainAxisSize.max,
        ),
      ),
      width: 300,
      color: Colors.white,
    );
  }

  void onAppPress(String id, BuildContext context) {
    print(id);
    Navigator.of(context).pushNamed('${AppScreen.route}/$id');
  }
}
