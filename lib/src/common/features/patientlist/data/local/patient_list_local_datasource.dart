import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class PatientListLocalDataSource implements LocalPatientListDataSource{
  @override
  Stream<List<PatientBasicInfo>> getAllPatients(int page, int pageSize) {
    // TODO: implement getAllPatients
    return null;
  }

  @override
  addPatient(PatientBasicInfo patient) {
    // TODO: implement addPatient
    return null;
  }
}