import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/bloc/state/patient_list_bloc.dart';
import 'package:telehealth/src/main.dart';

import 'name_bloc.dart';

@module
class DummyModule {
  @provide
  @singleton
  AppName provideMyName() => AppName("Telehealth");

  @provide
  @singleton
  HomePage provideHomePage(PatientListBloc bloc) => HomePage(bloc);

  @provide
  @singleton
  BlocBase provideNameBloc(AppName name) => NameBloc(name);
}
