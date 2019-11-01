import 'package:telehealth/src/common/features/patientlist/data/patient_general_info_model.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_repository.dart';

class PatientListUseCases{
  FetchPatientListUseCase fetchPatientListUseCase;
}


class FetchPatientListUseCase{
  PatientListRepository repository;

  Future<List<PatientGeneralInfo>> fetchPatients(){
    return repository.fetchPatients();
  }
}