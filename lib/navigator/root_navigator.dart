import 'package:flutter/material.dart';
import 'package:gea/api/authentication.dart';
import 'package:gea/modules/root_screen.dart';
import 'package:gea/screens/add_app_screen.dart';
import 'package:gea/screens/add_contour_screen.dart';
import 'package:gea/screens/app_screen.dart';
import 'package:gea/screens/home_screen.dart';
import 'package:collection/collection.dart';
import 'package:gea/screens/login_screen.dart';
import 'package:gea/ui/header.dart';
import 'package:gea/navigator/common.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

class RootNavigator extends StatelessWidget {
  var authClient = new AuthClient();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GEA',
        initialRoute: HomeScreen.route,
        navigatorKey: navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          final matchedPath = paths.firstWhereOrNull((path) {
            return RegExp(path.pattern).hasMatch(settings.name!);
          });

          final firstMatch =
              RegExp(matchedPath?.pattern ?? '').firstMatch(settings.name!);
          String match;

          try {
            match = firstMatch?.group(1) ?? "";
          } catch (_) {
            match = "";
          }

          if (matchedPath == null) {
            print("NO MARCHED PATH");
            return null;
          }

          return PageRouteBuilder(
            pageBuilder: (_context, animation1, animation2) => Scaffold(
              appBar: PreferredSize(
                  child: Header(), preferredSize: const Size.fromHeight(80.0)),
              body: RootScreen(
                route: settings.name ?? "",
                child: matchedPath.builder(context, match),
              ),
            ),
            transitionDuration: Duration(seconds: 0),
            settings: settings,
          );
        });
  }
}

List<Path> paths = [
  Path(
    r'^' + LoginScreen.route,
    (context, match) => LoginScreen(),
  ),
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
