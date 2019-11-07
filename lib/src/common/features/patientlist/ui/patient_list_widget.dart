import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/state/patient_list_ui_model.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

class PatientListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PatientListUIModel bloc = Provider.of<PatientListUIModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("TeleHealth"),
      ),
      body: DashboardWidget(), //
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          bloc.addPatient(PatientBasicInfo(name:"foo "+(DateTime.now().millisecondsSinceEpoch%100).toString(),age: (DateTime.now().millisecondsSinceEpoch%50)));
        },

        child: Icon(Icons.add),
      ),
    );
  }
}

class DashboardWidget extends StatelessWidget {
  List<PatientBasicInfo> _getInitialName() {
    return List();
  }

  @override
  Widget build(BuildContext context) {
    PatientListUIModel bloc = Provider.of<PatientListUIModel>(context);
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
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashboardWidget()));
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(patient.name),
                              Text(patient.age.toString()),
                            ],
                          ),
                        ),
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

