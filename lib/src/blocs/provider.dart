import 'package:flutter/material.dart';

import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  bool updateShouldNotify(_) => true;

  Provider({Key? key, required Widget child}) : super(key: key, child: child);

  static Bloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }
}
