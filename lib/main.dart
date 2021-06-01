import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/navigator/root_navigator.dart';
import 'package:provider/provider.dart';
import 'modules/sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>(create: (context) => AppModel())
      ],
      child: MaterialApp(
        title: 'GEA',
        theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Дашборд"),
          ),
          body: Row(
            children: [
              Sidebar(),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 12.0, right: 0.0, bottom: 12.0),
                child: VerticalDivider(),
              ),
              Expanded(
                child: RootNavigator(),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
