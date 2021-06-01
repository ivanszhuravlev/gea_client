import 'package:flutter/material.dart';
import 'package:gea/models/app_model.dart';
import 'package:gea/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>(create: (context) => AppModel())
      ],
      child: MaterialApp(
        home: MaterialApp(
          title: 'GEA',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: HomeScreen.route,
          routes: {
            HomeScreen.route: (context) => HomeScreen()
          },
        ),
      ),
    );
  }
}

