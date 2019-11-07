import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class MockPatientListRemoteDataSource implements RemotePatientListDataSource {

  BehaviorSubject<List<PatientBasicInfo>> _patients = BehaviorSubject();

  @override
  Stream<List<PatientBasicInfo>> getAllPatients(int page, int pageSize)  {
    addPatientsToStream();
    return _patients;
  }

  addPatientsToStream() async{
    await Future.delayed(Duration(seconds: 1));
    _patients.add(_dummyPatients);
  }

  @override
  addPatient(PatientBasicInfo patient, Function onSuccess, Function onFailure) {
    print("add patient ${patient.name}");
    _dummyPatients.add(patient);
    addPatientsToStream();
    onSuccess();
  }
}

List<PatientBasicInfo> _dummyPatients = [
  PatientBasicInfo(name: "Laxman Bhattarai", age: 26),
  PatientBasicInfo(name: "Madhu Reddy", age: 40),
  PatientBasicInfo(name: "Er Divyesh", age: 28),
  PatientBasicInfo(name: "Yad Singh", age: 28),
  PatientBasicInfo(name: "Sivram Movva", age: 28),
  PatientBasicInfo(name: "Steve Jobs", age: 45),
  PatientBasicInfo(name: "Bill Gates", age: 59),
  PatientBasicInfo(name: "John D. Rocketfeller", age: 64),
  PatientBasicInfo(name: "George Washington", age: 80),
  PatientBasicInfo(name: "Thomas Jefferson", age: 48),
  PatientBasicInfo(name: "John Adams", age: 60),
  PatientBasicInfo(name: "Napoleon Hill", age: 58),
  PatientBasicInfo(name: "Andrew Carnegie", age: 76),
];
