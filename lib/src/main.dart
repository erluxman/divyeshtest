import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:telehealth/src/data/local/local_db_floor.dart';
import 'package:telehealth/src/di/dummy_module.dart';
import 'package:telehealth/src/di/injector/name_injector.dart';
import 'package:telehealth/src/di/name_bloc.dart';

void main() async {
  var container = await NameInjector.create(DummyModule());
  runApp(container.app);
}

class App extends StatelessWidget {
  final AppName appName;
  final HomePage homePage;

  @provide
  const App(this.appName, this.homePage) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName.name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homePage,
    );
  }
}

class HomePage extends StatelessWidget {
  final NameBloc nameBloc;

  @provide
  HomePage(this.nameBloc);

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
            StreamBuilder(
              //initialData: "Hello There",
              stream: nameBloc.name,
              builder: (context, snapshot) {
                return Text(snapshot.data ?? _getInitialName());
              },
            ),
            StreamBuilder(
              //initialData: "Hello There",
              stream: nameBloc.persons,
              builder: (context, snapshot) {
                var persons = snapshot.data as List<Person>;
                var stringtoshow = "";
                persons.forEach((person)=>stringtoshow+= "${person.id}  ${person.name}");
                return Text(stringtoshow);
              },
            ),
          ],
        ),
      ), //
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await nameBloc.showEmail();
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  String _getInitialName() {
    nameBloc.initWithMyName();
    return "Hello there";
  }
}
