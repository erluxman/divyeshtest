import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';

class PatientListRepository {
  final LocalPatientListDataSource localDataSource;
  final RemotePatientListDataSource remoteDataSource;

  @provide
  const PatientListRepository(this.localDataSource, this.remoteDataSource);

  Stream<List<PatientBasicInfo>> fetchPatients(int page, int pageSize) {
    return localDataSource.getAllPatients(page, pageSize);
  }

  addPatient(PatientBasicInfo patient) {
    localDataSource.addPatient(patient);
    remoteDataSource.addPatient(patient, () async {
      await Future.delayed(Duration(seconds: 4));
      localDataSource.addPatient(patient.copyWith(isSynced: true));
    }, () async {
      await Future.delayed(Duration(seconds: 4));
      localDataSource.addPatient(patient.copyWith(isSynced: false));
    });
  }
}
