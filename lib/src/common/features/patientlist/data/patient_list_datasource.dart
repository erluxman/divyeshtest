import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

abstract class PatientListDataSource {
  Stream<List<PatientBasicInfo>> getAllPatients(int page, int pageSize);
}

abstract class RemotePatientListDataSource implements PatientListDataSource {
  addPatient(PatientBasicInfo patient, Function onSuccess, Function onFailure);
}

abstract class LocalPatientListDataSource implements PatientListDataSource {
  addPatient(PatientBasicInfo patient);
}
