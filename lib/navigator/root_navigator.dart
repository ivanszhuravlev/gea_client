import 'package:flutter/material.dart';
import 'package:gea/api/authentication.dart';
import 'package:gea/modules/sidebar.dart';
import 'package:gea/screens/add_app_screen.dart';
import 'package:gea/screens/add_contour_screen.dart';
import 'package:gea/screens/app_screen.dart';
import 'package:gea/screens/home_screen.dart';
import 'package:collection/collection.dart';
import 'package:gea/screens/login_screen.dart';
import 'package:gea/ui/header.dart';
import 'package:gea/ui/vertical_divider.dart';

class RootNavigator extends StatelessWidget {
  var authClient = new AuthClient();

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

        var content = authClient.isLoggedIn()
            ? Row(
                children: [
                  Sidebar(),
                  GlobalDivider(verticalOffset: 12),
                  Expanded(
                    child: SizedBox.expand(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                        child: matchedPath.builder(context, match),
                      ),
                    ),
                  ),
                ],
              )
            : LoginScreen();

        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => Scaffold(
            appBar: PreferredSize(
                child: Header(), preferredSize: const Size.fromHeight(80.0)),
            body: content,
            backgroundColor: Colors.white,
          ),
          transitionDuration: Duration(seconds: 0),
          settings: settings,
        );
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
    r'^' + AddAppScreen.route,
    (context, match) => AddAppScreen(),
  ),
  Path(
    r'^/app/([\w-]+)' + AddContourScreen.route,
    (context, match) => AddContourScreen(appId: match),
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
