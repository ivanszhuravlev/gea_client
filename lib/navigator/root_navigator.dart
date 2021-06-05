import 'package:flutter/material.dart';
import 'package:gea/modules/sidebar.dart';
import 'package:gea/screens/app.dart';
import 'package:gea/screens/home.dart';
import 'package:collection/collection.dart';

class RootNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEA',
      initialRoute: HomeScreen.route,
      onGenerateRoute: (RouteSettings settings) {
        final matchedPath = paths.firstWhereOrNull(
            (path) => RegExp(path.pattern).hasMatch(settings.name!));

        final firstMatch =
            RegExp(matchedPath?.pattern ?? '').firstMatch(settings.name!);
        String match;

        try {
          match = firstMatch?.group(1) ?? "";
        } catch (_) {
          match = "";
        }

        if (matchedPath == null) {
          return null;
        }

        return PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => Scaffold(
                  appBar: AppBar(
                    title: Text("Дашборд"),
                  ),
                  body: Row(
                    children: [
                      Sidebar(),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, top: 12.0, right: 0.0, bottom: 12.0),
                        child: VerticalDivider(),
                      ),
                      Expanded(
                        child: matchedPath.builder(context, match),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                ),
            transitionDuration: Duration(seconds: 0),
            settings: settings);
      },
    );
  }
}

List<Path> paths = [
  Path(
    r'^/app/([\w-]+)$',
    (context, match) => AppScreen(appId: match),
  ),
  Path(
    r'^' + HomeScreen.route,
    (context, match) => HomeScreen(),
  ),
];

class Path {
  const Path(this.pattern, this.builder);

  final String pattern;
  final Widget Function(BuildContext, String) builder;
}
