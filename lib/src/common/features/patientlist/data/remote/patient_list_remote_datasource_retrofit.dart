import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class PatientListRemoteDataSourceRefrofit implements RemotePatientListDataSource{
  @override
  Future<List<PatientBasicInfo>> getAllPatients(int page, int pageSize) {
    return null;
  }
}