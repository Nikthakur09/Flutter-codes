import 'package:flutter/material.dart';
import 'package:login_screen/src/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({ Key? key, required Widget child})
      : super(child: child, key: key);

  bool updateShouldNotify(_) => true;
  static Bloc of(context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
