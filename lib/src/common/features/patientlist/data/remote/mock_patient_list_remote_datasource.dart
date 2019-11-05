import 'dart:async';

import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class MockPatientListRemoteDataSource implements RemotePatientListDataSource {
  @override
  Future<List<PatientBasicInfo>> getAllPatients(int page, int pageSize) async {
    return dummyPatients;
  }
}

List<PatientBasicInfo> dummyPatients = [
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
