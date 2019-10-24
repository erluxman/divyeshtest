import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:telehealth/src/di/dummy_module.dart';
import 'package:telehealth/src/di/name_bloc.dart';
import 'package:telehealth/src/di/injector/name_injector.dart';

void main() async {
  var container = await NameInjector.create(DummyModule());
  runApp(container.app);
}

class App extends StatelessWidget {
  final AppName appName;

  @provide
  const App(this.appName) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName.name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeleHealth"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TeleHealth',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
