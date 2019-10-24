
import 'package:inject/inject.dart';
import 'package:telehealth/src/di/name_bloc.dart';
import 'package:telehealth/src/main.dart';

@module
class DummyModule{

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
