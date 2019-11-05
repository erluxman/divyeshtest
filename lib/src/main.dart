import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:provider/provider.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/state/patient_list_bloc.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

import 'common/di/injector/name_injector.dart';

void main() async {
  var container = await NameInjector.create();
  runApp(container.app);
}

class App extends StatelessWidget {
  final PatientListBloc patientsBloc;

  @provide
  const App(this.patientsBloc) : super();

  @override
  Widget build(BuildContext context) {
    return Provider<PatientListBloc>.value(
      value:patientsBloc,
      child: MaterialApp(
        title: "Tele health",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
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
      body: DashboardWidget(), //
    );
  }
}

class DashboardWidget extends StatelessWidget {
  List<PatientBasicInfo> _getInitialName() {
    return List();
  }

  @override
  Widget build(BuildContext context) {
    PatientListBloc bloc = Provider.of<PatientListBloc>(context);
    bloc.fetchPatients();
    return Center(
      child: StreamBuilder(
        //initialData: "Hello There",
        stream: bloc.patients,
        builder: (context, snapshot) {
          List<PatientBasicInfo> patients = snapshot.data ?? _getInitialName();
          print(patients);
          if (patients.isEmpty) return CircularProgressIndicator();
          return ListView(
              children: patients.map((patient) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(patient.name),
                      Text(patient.age.toString()),
                    ],
                  ),
                ),
              ),
            );
          }).toList());
        },
      ),
    );
  }
}
