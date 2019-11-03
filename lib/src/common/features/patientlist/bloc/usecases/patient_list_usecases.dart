import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_repository.dart';

class PatientListUseCases{
  FetchPatientListUseCase fetchPatientListUseCase;
}


class FetchPatientListUseCase{
  PatientListRepository repository;

  Future<List<PatientBasicInfo>> fetchPatients(){
    return repository.fetchPatients();
  }
}