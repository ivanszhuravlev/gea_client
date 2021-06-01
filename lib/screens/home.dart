import 'package:flutter/material.dart';
import 'package:gea/api/application.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/';
  final ApplicationClient client = ApplicationClient();

  void _incrementCounter() {
      client.create("someName");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Дашборд"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
