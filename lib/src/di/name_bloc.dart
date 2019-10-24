import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';

class NameBloc extends BlocBase {
  AppName _name;
  PublishSubject<String> _nameSubject;

  @provide
  NameBloc(this._name){
    init();
  }

  init() {
    _nameSubject = PublishSubject();
  }

  Observable<String> get name => _nameSubject.stream;

  initWithMyName() async {
    _nameSubject.add("Laxman Bhattarai");
  }

  @override
  dispose() {
    _nameSubject.close();
  }
}

abstract class BlocBase {
  void dispose();
}

class AppName {
  String name;

  AppName(this.name);
}
