import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@module
class WidgetModule{

  @provide
  @singleton
  FlatButton getWidget() =>FlatButton(
    onPressed: (){
      print("pressed");
    },
    child: Text("Laxman Bhattarai"),
  );
}