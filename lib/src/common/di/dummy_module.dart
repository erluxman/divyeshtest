import 'package:inject/inject.dart';
import 'package:telehealth/src/main.dart';

import 'name_bloc.dart';

@module
class DummyModule {
  @provide
  @singleton
  AppName provideMyName() => AppName("Telehealth");

  @provide
  @singleton
  HomePage provideHomePage(NameBloc nameBloc) => HomePage(nameBloc);

  @provide
  @singleton
  BlocBase provideNameBloc(AppName name) => NameBloc(name);
}
