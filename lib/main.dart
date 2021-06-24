import 'package:flutter/material.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/navigator/root_navigator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppsListModel>(create: (context) => AppsListModel()),
      ],
      child: RootNavigator()
    );
  }
}
