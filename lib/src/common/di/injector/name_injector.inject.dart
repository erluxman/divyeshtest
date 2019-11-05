import 'name_injector.dart' as _i1;
import '../../features/patientlist/di/patient_list_module.dart' as _i2;
import '../../features/patientlist/data/patient_list_datasource.dart' as _i3;
import '../../features/patientlist/data/patient_list_repository.dart' as _i4;
import '../../features/patientlist/bloc/usecases/patient_list_usecases.dart'
    as _i5;
import '../../features/patientlist/bloc/state/patient_list_bloc.dart' as _i6;
import 'dart:async' as _i7;
import '../../../main.dart' as _i8;

class NameInjector$Injector implements _i1.NameInjector {
  NameInjector$Injector._(this._patientListModule);

  final _i2.PatientListModule _patientListModule;

  _i3.LocalPatientListDataSource _singletonLocalPatientListDataSource;

  _i3.RemotePatientListDataSource _singletonRemotePatientListDataSource;

  _i4.PatientListRepository _singletonPatientListRepository;

  _i5.FetchPatientListUseCase _singletonFetchPatientListUseCase;

  _i6.PatientListBloc _singletonPatientListBloc;

  static _i7.Future<_i1.NameInjector> create(
      _i2.PatientListModule patientListModule) async {
    final injector = NameInjector$Injector._(patientListModule);

    return injector;
  }

  _i8.App _createApp() => _i8.App(_createPatientListBloc());
  _i6.PatientListBloc _createPatientListBloc() => _singletonPatientListBloc ??=
      _patientListModule.provideBloc(_createPatientListUseCases());
  _i5.PatientListUseCases _createPatientListUseCases() => _patientListModule
      .providePatientListUseCases(_createFetchPatientListUseCase());
  _i5.FetchPatientListUseCase _createFetchPatientListUseCase() =>
      _singletonFetchPatientListUseCase ??= _patientListModule
          .provideFetchPatientListUseCase(_createPatientListRepository());
  _i4.PatientListRepository _createPatientListRepository() =>
      _singletonPatientListRepository ??= _patientListModule.provideRepository(
          _createLocalPatientListDataSource(),
          _createRemotePatientListDataSource());
  _i3.LocalPatientListDataSource _createLocalPatientListDataSource() =>
      _singletonLocalPatientListDataSource ??=
          _patientListModule.provideLocalDataSource();
  _i3.RemotePatientListDataSource _createRemotePatientListDataSource() =>
      _singletonRemotePatientListDataSource ??=
          _patientListModule.provideRemoteDataSource();
  @override
  _i8.App get app => _createApp();
}
