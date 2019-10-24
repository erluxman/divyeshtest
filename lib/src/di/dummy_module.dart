
import 'package:inject/inject.dart';
import 'package:telehealth/src/di/name_bloc.dart';

@module
class DummyModule{

  @provide
  @singleton
  AppName provideMyName() => AppName("Telehealth");


  @provide
  @singleton
  BlocBase provideNameBloc(AppName name) => NameBloc(name);

}
