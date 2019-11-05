import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/usecases/patient_list_usecases.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_basic_info.dart';

class PatientListBloc{
  final PatientListUseCases useCases;


  @provide
  const PatientListBloc(this.useCases);

  Stream<List<PatientBasicInfo>> getPatientList() async*{
    List<PatientBasicInfo> patients = await useCases.fetchPatientListUseCase.fetchPatients(1,50);
   yield patients;
  }
}