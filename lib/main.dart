import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:provider/provider.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/state/patient_list_ui_model.dart';

import 'src/common/di/injector/name_injector.dart';
import 'src/common/features/patientlist/ui/patient_list_widget.dart';

void main() async {
  var container = await NameInjector.create();
  runApp(container.app);
}

class App extends StatelessWidget {
  final PatientListUIModel patientsBloc;

  @provide
  const App(this.patientsBloc) : super();

  @override
  Widget build(BuildContext context) {
    return Provider<PatientListUIModel>.value(
      value: patientsBloc,
      child: MaterialApp(
        title: "Tele health",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PatientListWidget(),
      ),
    );
  }
}
