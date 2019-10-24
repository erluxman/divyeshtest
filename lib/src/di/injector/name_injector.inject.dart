import 'name_injector.dart' as _i1;
import '../dummy_module.dart' as _i2;
import '../name_bloc.dart' as _i3;
import 'dart:async' as _i4;
import '../../main.dart' as _i5;

class NameInjector$Injector implements _i1.NameInjector {
  NameInjector$Injector._(this._dummyModule);

  final _i2.DummyModule _dummyModule;

  _i3.AppName _singletonAppName;

  static _i4.Future<_i1.NameInjector> create(
      _i2.DummyModule dummyModule) async {
    final injector = NameInjector$Injector._(dummyModule);

    return injector;
  }

  _i5.App _createApp() => _i5.App(_createAppName());
  _i3.AppName _createAppName() =>
      _singletonAppName ??= _dummyModule.provideMyName();
  @override
  _i5.App get app => _createApp();
}
