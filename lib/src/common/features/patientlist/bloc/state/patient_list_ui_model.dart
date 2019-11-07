import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/usecases/patient_list_usecases.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

class PatientListUIModel {
  final PatientListUseCases useCases;

  BehaviorSubject<List<PatientBasicInfo>> _patientsList = BehaviorSubject();

  Observable<List<PatientBasicInfo>> get patients => _patientsList.stream;

  @provide
  PatientListUIModel(this.useCases);

  fetchPatients() {
    useCases.fetchPatientListUseCase.fetchPatients(1, 50).listen((patients){
      _patientsList.add(patients);
    });
  }

  addPatient(PatientBasicInfo patientBasicInfo) {
    useCases.addPatientUseCase.addPatient(patientBasicInfo);
  }
}
