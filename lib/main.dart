import 'package:flutter/material.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/navigator/root_navigator.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async{
  await dotenv.load(fileName: ".env");
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
