import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/state/patient_list_bloc.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

import 'common/di/injector/name_injector.dart';
import 'common/di/name_bloc.dart';

void main() async {
  var container = await NameInjector.create();
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

class HomePage extends StatefulWidget {
  final PatientListBloc bloc;

  @provide
  HomePage(this.bloc);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.bloc.fetchPatients();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeleHealth"),
      ),
      body: Center(
        child: StreamBuilder(
          //initialData: "Hello There",
          stream: widget.bloc.patients,
          builder: (context, snapshot) {
            List<PatientBasicInfo> patients =
                snapshot.data ?? _getInitialName();
            print(patients);
            return ListView(
                children: patients.map((patient) {
              return Text(patient.name);
            }).toList());
          },
        ),
      ), //
    );
  }

  List<PatientBasicInfo> _getInitialName() {
    return List();
  }
}
