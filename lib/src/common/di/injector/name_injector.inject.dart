import 'name_injector.dart' as _i1;
import '../dummy_module.dart' as _i2;
import '../name_bloc.dart' as _i3;
import '../../../main.dart' as _i4;
import 'dart:async' as _i5;
import '../modules/data_module.dart' as _i6;
import '../modules/bloc_module.dart' as _i7;
import '../modules/widget_module.dart' as _i8;

class NameInjector$Injector implements _i1.NameInjector {
  NameInjector$Injector._(this._dummyModule);

  final _i2.DummyModule _dummyModule;

  _i3.AppName _singletonAppName;

  _i4.HomePage _singletonHomePage;

  static _i5.Future<_i1.NameInjector> create(_i2.DummyModule dummyModule,
      _i6.DataModule _, _i7.BlocModule __, _i8.WidgetModule ___) async {
    final injector = NameInjector$Injector._(dummyModule);

    return injector;
  }

  _i4.App _createApp() => _i4.App(_createAppName(), _createHomePage());
  _i3.AppName _createAppName() =>
      _singletonAppName ??= _dummyModule.provideMyName();
  _i4.HomePage _createHomePage() =>
      _singletonHomePage ??= _dummyModule.provideHomePage(_createNameBloc());
  _i3.NameBloc _createNameBloc() => _i3.NameBloc(_createAppName());
  @override
  _i4.App get app => _createApp();
}
