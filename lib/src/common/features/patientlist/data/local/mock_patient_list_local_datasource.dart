import 'package:rxdart/rxdart.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class MockPatientListLocalDataSource implements LocalPatientListDataSource {
  BehaviorSubject<List<PatientBasicInfo>> _patients = BehaviorSubject();

  @override
  Stream<List<PatientBasicInfo>> getAllPatients(int page, int pageSize) {
    addPatientsToStream();
    return _patients;
  }

  addPatientsToStream() async {
    await Future.delayed(Duration(seconds: 1));
    _patients.add(_dummyPatients);
  }

  @override
  addPatient(PatientBasicInfo patient) {
    print("add patient ${patient.name}");
    for (int i = 0; i < _dummyPatients.length; i++) {
      if(_dummyPatients[i].id==patient.id){
        _dummyPatients[i] = patient;
        addPatientsToStream();
        break;
      }
    }
    _dummyPatients.add(patient);
    addPatientsToStream();
  }
}

List<PatientBasicInfo> _dummyPatients = [
  PatientBasicInfo(isSynced: true, name: "Laxman Bhattarai", age: 26),
  PatientBasicInfo(isSynced: true, name: "Madhu Reddy", age: 40),
  PatientBasicInfo(isSynced: true, name: "Er Divyesh", age: 28),
  PatientBasicInfo(isSynced: true, name: "Yad Singh", age: 28),
  PatientBasicInfo(isSynced: true, name: "Sivram Movva", age: 28),
  PatientBasicInfo(isSynced: true, name: "Steve Jobs", age: 45),
  PatientBasicInfo(isSynced: true, name: "Bill Gates", age: 59),
  PatientBasicInfo(isSynced: true, name: "John D. Rocketfeller", age: 64),
  PatientBasicInfo(isSynced: true, name: "George Washington", age: 80),
  PatientBasicInfo(isSynced: true, name: "Thomas Jefferson", age: 48),
  PatientBasicInfo(isSynced: true, name: "John Adams", age: 60),
  PatientBasicInfo(isSynced: true, name: "Napoleon Hill", age: 58),
  PatientBasicInfo(isSynced: true, name: "Andrew Carnegie", age: 76),
];
