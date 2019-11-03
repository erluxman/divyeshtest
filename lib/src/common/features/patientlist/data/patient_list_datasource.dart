import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

abstract class PatientListDataSource{

  Future<List<PatientBasicInfo>> getAllPatients(int page, int pageSize);
}

abstract class RemotePatientListDataSource implements PatientListDataSource{

}

abstract class LocalPatientListDataSource implements PatientListDataSource{

}
