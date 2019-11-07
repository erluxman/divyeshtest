import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

abstract class PatientListDataSource{
  Stream<List<PatientBasicInfo>> getAllPatients(int page, int pageSize);
  addPatient(PatientBasicInfo patient);
}

abstract class RemotePatientListDataSource implements PatientListDataSource{

}

abstract class LocalPatientListDataSource implements PatientListDataSource{

}
