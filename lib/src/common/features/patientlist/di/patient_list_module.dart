import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/state/patient_list_bloc.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/usecases/patient_list_usecases.dart';
import 'package:telehealth/src/common/features/patientlist/data/local/mock_patient_list_local_datasource.dart';
import 'package:telehealth/src/common/features/patientlist/data/local/patient_list_local_datasource.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_datasource.dart';
import 'package:telehealth/src/common/features/patientlist/data/patient_list_repository.dart';
import 'package:telehealth/src/common/features/patientlist/data/remote/mock_patient_list_remote_datasource.dart';
import 'package:telehealth/src/common/lib/utils/global_state.dart';

@module
class PatientListModule {
  @provide
  @singleton
  PatientListBloc provideBloc(PatientListUseCases useCases) =>
      PatientListBloc(useCases);

  @provide
  PatientListUseCases providePatientListUseCases(
          FetchPatientListUseCase fetchPatientList) =>
      PatientListUseCases(fetchPatientList);

  @provide
  @singleton
  FetchPatientListUseCase provideFetchPatientListUseCase(
          PatientListRepository repo) =>
      FetchPatientListUseCase(repo);

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
          : PatientListLocalDataSource();
}
