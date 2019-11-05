import 'name_injector.dart' as _i1;
import '../dummy_module.dart' as _i2;
import '../name_bloc.dart' as _i3;
import '../../features/patientlist/di/patient_list_module.dart' as _i4;
import '../../features/patientlist/data/patient_list_datasource.dart' as _i5;
import '../../features/patientlist/data/patient_list_repository.dart' as _i6;
import '../../features/patientlist/bloc/usecases/patient_list_usecases.dart'
    as _i7;
import '../../features/patientlist/bloc/state/patient_list_bloc.dart' as _i8;
import '../../../main.dart' as _i9;
import 'dart:async' as _i10;
import '../modules/data_module.dart' as _i11;
import '../modules/bloc_module.dart' as _i12;
import '../modules/widget_module.dart' as _i13;

class NameInjector$Injector implements _i1.NameInjector {
  NameInjector$Injector._(this._dummyModule, this._patientListModule);

  final _i2.DummyModule _dummyModule;

  _i3.AppName _singletonAppName;

  final _i4.PatientListModule _patientListModule;

  _i5.LocalPatientListDataSource _singletonLocalPatientListDataSource;

  _i5.RemotePatientListDataSource _singletonRemotePatientListDataSource;

  _i6.PatientListRepository _singletonPatientListRepository;

  _i7.FetchPatientListUseCase _singletonFetchPatientListUseCase;

  _i8.PatientListBloc _singletonPatientListBloc;

  _i9.HomePage _singletonHomePage;

  static _i10.Future<_i1.NameInjector> create(
      _i2.DummyModule dummyModule,
      _i11.DataModule _,
      _i12.BlocModule __,
      _i13.WidgetModule ___,
      _i4.PatientListModule patientListModule) async {
    final injector = NameInjector$Injector._(dummyModule, patientListModule);

    return injector;
  }

  _i9.App _createApp() => _i9.App(_createAppName(), _createHomePage());
  _i3.AppName _createAppName() =>
      _singletonAppName ??= _dummyModule.provideMyName();
  _i9.HomePage _createHomePage() => _singletonHomePage ??=
      _dummyModule.provideHomePage(_createPatientListBloc());
  _i8.PatientListBloc _createPatientListBloc() => _singletonPatientListBloc ??=
      _patientListModule.provideBloc(_createPatientListUseCases());
  _i7.PatientListUseCases _createPatientListUseCases() => _patientListModule
      .providePatientListUseCases(_createFetchPatientListUseCase());
  _i7.FetchPatientListUseCase _createFetchPatientListUseCase() =>
      _singletonFetchPatientListUseCase ??= _patientListModule
          .provideFetchPatientListUseCase(_createPatientListRepository());
  _i6.PatientListRepository _createPatientListRepository() =>
      _singletonPatientListRepository ??= _patientListModule.provideRepository(
          _createLocalPatientListDataSource(),
          _createRemotePatientListDataSource());
  _i5.LocalPatientListDataSource _createLocalPatientListDataSource() =>
      _singletonLocalPatientListDataSource ??=
          _patientListModule.provideLocalDataSource();
  _i5.RemotePatientListDataSource _createRemotePatientListDataSource() =>
      _singletonRemotePatientListDataSource ??=
          _patientListModule.provideRemoteDataSource();
  @override
  _i9.App get app => _createApp();
}
