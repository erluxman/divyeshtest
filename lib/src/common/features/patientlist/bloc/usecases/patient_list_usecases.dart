import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_repository.dart';

class PatientListUseCases {
  final FetchPatientListUseCase fetchPatientListUseCase;

  @provide
  const PatientListUseCases(
    this.fetchPatientListUseCase,
  );
}

class FetchPatientListUseCase {
  final PatientListRepository repository;

  @provide
  const FetchPatientListUseCase(this.repository);

  Future<List<PatientBasicInfo>> fetchPatients(int page, int pageSize) {
    return repository.fetchPatients(page, pageSize);
  }
}
