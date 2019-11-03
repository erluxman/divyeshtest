import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class PatientListRepository {
  final LocalPatientListDataSource localDataSource;
  final RemotePatientListDataSource remoteDataSource;

  const PatientListRepository(this.localDataSource, this.remoteDataSource);

  Future<List<PatientBasicInfo>> fetchPatients() {}
}