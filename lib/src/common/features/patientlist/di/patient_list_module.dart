import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/state/patient_list_ui_model.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/usecases/patient_list_usecases.dart';
import 'package:telehealth/src/common/features/patientlist/data/local/mock_patient_list_local_datasource.dart';
import 'package:telehealth/src/common/features/patientlist/data/local/patient_list_local_datasource.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_repository.dart';
import 'package:telehealth/src/common/features/patientlist/data/remote/mock_patient_list_remote_datasource.dart';
import 'package:telehealth/src/common/features/patientlist/data/remote/patient_list_remote_datasource_retrofit.dart';
import 'package:telehealth/src/common/lib/utils/global_state.dart';

@module
class PatientListModule {
  @provide
  @singleton
  PatientListUIModel provideBloc(PatientListUseCases useCases) =>
      PatientListUIModel(useCases);

  @provide
  PatientListUseCases providePatientListUseCases(
          FetchPatientListUseCase fetchPatientList,
          AddPatientUseCase addPatient) =>
      PatientListUseCases(fetchPatientList, addPatient);

  @provide
  @singleton
  FetchPatientListUseCase provideFetchPatientListUseCase(
          PatientListRepository repo) =>
      FetchPatientListUseCase(repo);

  @provide
  @singleton
  AddPatientUseCase provideAddPatientUseCase(PatientListRepository repo) =>
      AddPatientUseCase(repo);

  @provide
  @singleton
  PatientListRepository provideRepository(LocalPatientListDataSource local,
          RemotePatientListDataSource remote) =>
      PatientListRepository(local, remote);

  @provide
  @singleton
  LocalPatientListDataSource provideLocalDataSource() =>
      currentGlobalState == AppBuildConfig.MOCK
          ? MockPatientListLocalDataSource()
          : PatientListLocalDataSource();

  @provide
  @singleton
  RemotePatientListDataSource provideRemoteDataSource() =>
      currentGlobalState == AppBuildConfig.MOCK
          ? MockPatientListRemoteDataSource()
          : PatientListRemoteDataSourceRefrofit();
}
