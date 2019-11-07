import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class PatientListRemoteDataSourceRefrofit implements RemotePatientListDataSource{
  @override
  Stream<List<PatientBasicInfo>> getAllPatients(int page, int pageSize) {
    return null;
  }

  @override
  addPatient(PatientBasicInfo patient, Function onSuccess, Function onFailure) {
    // TODO: implement addPatient
    return null;
  }
}