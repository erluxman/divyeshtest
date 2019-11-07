import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_repository.dart';

class PatientListUseCases {
  final FetchPatientListUseCase fetchPatientListUseCase;

  final AddPatientUseCase addPatientUseCase;

  @provide
  const PatientListUseCases(
    this.fetchPatientListUseCase,
    this.addPatientUseCase,
  );
}

class FetchPatientListUseCase {
  final PatientListRepository repository;

  @provide
  const FetchPatientListUseCase(this.repository);

  Stream<List<PatientBasicInfo>> fetchPatients(int page, int pageSize) {
    return repository.fetchPatients(page, pageSize);
  }
}

class AddPatientUseCase {
  final PatientListRepository repository;

  @provide
  const AddPatientUseCase(this.repository);

  addPatient(PatientBasicInfo patient) {
    return repository.addPatient(patient);
  }
}
