import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/usecases/patient_list_usecases.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

class PatientListBloc {
  final PatientListUseCases useCases;

  PublishSubject<List<PatientBasicInfo>> _patientsList = PublishSubject();

  Observable<List<PatientBasicInfo>> get patients => _patientsList.stream;

  @provide
  PatientListBloc(this.useCases);

  fetchPatients() {
    useCases.fetchPatientListUseCase.fetchPatients(1, 50).then((value) {
      _patientsList.add(value);
    });
  }
}
